class Contractor < ApplicationRecord
    has_many :subprojects, :through => contracts
end
