class Axis < ApplicationRecord
    has_many :measures, :dependent => :destroy
end
