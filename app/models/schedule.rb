class Schedule < ApplicationRecord
  has_many :schedule_actions, :dependent => :destroy
belongs_to :project
belongs_to :subproject
end
