class User < ApplicationRecord
  belongs_to :organisation
  has_many :subprojects,  :foreign_key => 'accountable_id'
end
