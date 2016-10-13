class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :trackable, :validatable
  belongs_to :organisation
  has_many :projects,  :foreign_key => 'accountable_id'
  has_many :projects,  :foreign_key => 'manager_id'

  def organisation_full_title
    organisation.full_title
  end

end
