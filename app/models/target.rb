class Target < ApplicationRecord
  has_many :act_plans, :dependent => :destroy
  belongs_to :measure

  validates :code, presence: true, uniqueness: true
  validates :description, presence: true
  validates :measure_id, presence: true


  def full_title
    code + ": " + description
  end

  def measure_full_title
    measure.full_title
  end

  def measure_code
    measure.code
  end

  def measure_title
    measure.description
  end

end
