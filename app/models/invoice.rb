class Invoice < ApplicationRecord
  has_many :payments, :dependent => :destroy
  belongs_to :undertaking_certificate
end
