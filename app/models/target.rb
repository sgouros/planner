class Target < ApplicationRecord
  has_many :act_plans, :dependent => :destroy
belongs_to :measure
end
