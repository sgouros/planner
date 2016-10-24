require 'digest'
class User < ApplicationRecord
  include ApplicationHelper

  attr_accessor :password

  belongs_to :organisation
  has_many :projects,  :foreign_key => 'accountable_id'
  has_many :projects,  :foreign_key => 'manager_id'

  before_save :set_normalized_fields
  before_save :encrypt_new_password

  default_scope {order('surname ASC')}

  validates :email, :uniqueness => true,
  					:length => { :within => 5..50 },
  					:format => { :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  validates :password, 	:confirmation => true,
  					:length => { :within => 4..10 },
  					:presence => true,
  					:if => :password_validation_required?



  def set_normalized_fields
    Rails.logger.info("set_normalized_fields_called")
    self.normalized_name = normalize_string name
    self.normalized_surname = normalize_string surname
  end

  def full_name
    surname + " " + name
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user
      Rails.logger.info("found user" + user.inspect)
    else
      Rails.logger.info("user " + email + " not found") unless user
    end
    return user if user && user.authenticated?(password)
  end

  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  def organisation_full_title
    organisation.full_title
  end


  def imperative_name
    if female
      name
    else
      name.chop
    end
  end


  protected

  def password_validation_required?
    hashed_password.blank? || password.present?
  end

  def encrypt_new_password
    if defined? password
      if !password.blank?
        self.hashed_password = encrypt(password)
      end
    end
  end

  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end



end
