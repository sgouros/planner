class Act < ApplicationRecord
  has_many :projects
  belongs_to :act_plan

  validates :code, presence: true, uniqueness: true
  validates :description, presence: true
  validates :act_plan_id, presence: true


  def act_plan_full_title
    act_plan.full_title
  end

  def act_plan_title
    act_plan.description
  end

  def act_plan_code
    act_plan.code
  end

  def full_title
    code + ": " + description
  end

end
