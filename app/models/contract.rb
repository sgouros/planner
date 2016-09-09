class Contract < ApplicationRecord
  has_many :contract_updates, :dependent => :destroy
  belongs_to :contractor
  belongs_to :contract_parent, polymorphic: true   # for the moment only project and subproject are contract_parents
end
