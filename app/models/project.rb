class Project < ApplicationRecord
  has_many :subprojects, :dependent => :destroy
has_many :allocations, :dependent => :destroy
has_one  :schedule, :dependent => :destroy

belongs_to :act
belongs_to :collective_decision
belongs_to :supervisor_body, :class_name => 'Organisation', :foreign_key => 'supervisor_body_id'
end
