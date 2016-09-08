class Project < ApplicationRecord
  has_many :subprojects,  :dependent => :destroy
  has_many :allocations,  :dependent => :destroy
  has_one  :schedule,     :dependent => :destroy

  belongs_to :act
  belongs_to :manager,            :class_name => 'User',          :foreign_key => 'manager_id'
  belongs_to :accountable,        :class_name => 'User',          :foreign_key => 'accountable_id'
  belongs_to :supervisor_body,    :class_name => 'Organisation',  :foreign_key => 'supervisor_body_id'
  belongs_to :collective_decision
end
