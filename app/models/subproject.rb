class Subproject < ApplicationRecord
  has_many  :undertaking_certificates, :dependent => :destroy
has_many  :contracts, :dependent => :destroy
has_many  :contractors, :through => :contracts
has_one   :schedule
has_one   :expence_forecast

belongs_to :project
belongs_to :accountable
belongs_to :implementation_body, :class_name => 'Organisation', :foreign_key => 'implementation_body_id'
belongs_to :supervisor_body,     :class_name => 'Organisation', :foreign_key => 'supervisor_body_id'
end
