class ActPlan < ApplicationRecord
  has_many :acts, :dependent => :destroy
  belongs_to :target

  validates :code, presence: true, uniqueness: true
  validates :description, presence: true
  validates :target_id, presence: true
  # validates :target, presence: true


  def target_full_title
    target.full_title
  end

  def target_title
    target.description
  end

  def target_code
    target.code
  end

  def full_title
    code + ": " + description
  end

end
