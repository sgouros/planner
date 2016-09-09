class Schedule < ApplicationRecord
  has_many :schedule_actions, :dependent => :destroy
  belongs_to :schedule_parent, polymorphic: true   # for the moment only project and subproject are schedulables
end
