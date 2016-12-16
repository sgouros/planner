class Allocation < ApplicationRecord
  belongs_to :project

  monetize :amount_cents

  validates :protocol, presence: true, uniqueness: true
  validates :start_date, presence: true
  validates :amount_cents, presence: true
  validates :project_id, presence: true
  validates :amount, presence: true

  def project_full_title
    project.full_title
  end

  def project_title
    project.title
  end

  def project_code
    project.code
  end

  def full_title
    protocol + ": " + date + ": "+ amount_cents
  end


end
