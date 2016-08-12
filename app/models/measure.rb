class Measure < ApplicationRecord
  has_many :targets, :dependent => :destroy
belongs_to :axis
end
