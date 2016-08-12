class ActPlan < ApplicationRecord
  has_many :acts, :dependent => :destroy
belongs_to :target
end
