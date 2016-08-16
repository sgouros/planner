class CollectiveDecision < ApplicationRecord
  has_many :projects, :dependent => :destroy
  has_many :collective_decision_updates, :dependent => :destroy
end
