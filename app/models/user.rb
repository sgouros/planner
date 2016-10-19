require 'digest'
class User < ApplicationRecord
  include ApplicationHelper
  belongs_to :organisation
  has_many :projects,  :foreign_key => 'accountable_id'
  has_many :projects,  :foreign_key => 'manager_id'

  before_save :set_normalized_fields
  default_scope {order('surname ASC')}

  validates :email, :uniqueness => true,
  					:length => { :within => 5..50 },
  					:format => { :with => /\A[\A@][\w.-]+@[\w.-]+[.][a-z]{2,4}\z/i }

  validates :password, 	:confirmation => true,
  					:length => { :within => 4..20 },
  					:presence => true,
  					:if => :password_validation_required?


  before_save :encrypt_new_password

  def set_normalized_fields
    self.normalized_name = normalize_string name
    self.normalized_surname = normalize_string surname
  end

  def full_name
    surname + " " + name
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    Rails.logger.info("found user" + user) if user
    Rails.logger.info("user " + email + " not found") unless user
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
    return unless password
    return if password.blank?
    self.hashed_password = encrypt(password)
  end

  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end



end
