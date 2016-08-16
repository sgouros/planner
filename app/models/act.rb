class Act < ApplicationRecord
  has_many :projects
  belongs_to :act_plan
end
