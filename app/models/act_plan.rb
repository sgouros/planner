class ActPlan < ApplicationRecord
  has_many :acts, :dependent => :destroy
  belongs_to :target

  def target_full_title
    # ok
    target.full_title
  end

  def target_title
    target.description
  end

  def target_code
    target.code
  end

end
