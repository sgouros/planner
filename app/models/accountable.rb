class Accountable < ApplicationRecord
  has_many :subprojects
belongs_to :organisation
end
