class Measure < ApplicationRecord
  has_many :targets, :dependent => :destroy
  belongs_to :axis

  def full_title
    code + ": " + description
  end

end
