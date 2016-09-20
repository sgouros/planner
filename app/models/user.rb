class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :organisation
  has_many :projects,  :foreign_key => 'accountable_id'
  has_many :projects,  :foreign_key => 'manager_id'
end
