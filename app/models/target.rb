class Target < ApplicationRecord
  has_many :act_plans, :dependent => :destroy
  belongs_to :measure


  def full_title
    code + ": " + description
  end

end
