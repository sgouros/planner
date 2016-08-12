class UndertakingCertificate < ApplicationRecord
  has_many :invoices
belongs_to :subproject
end
