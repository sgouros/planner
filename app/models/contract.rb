class Contract < ApplicationRecord
  has_many :contract_updates, :dependent => :destroy
belongs_to :contractor
belongs_to :subproject
end
