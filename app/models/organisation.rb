class Organisation < ApplicationRecord
  has_many :users
  has_many :projects,     :foreign_key => 'supervisor_body_id'
  has_many :subprojects,  :foreign_key => 'supervisor_body_id'
  has_many :subprojects,  :foreign_key => 'implementation_body_id'
end
