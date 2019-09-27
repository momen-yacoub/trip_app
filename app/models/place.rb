class Place < ApplicationRecord
  acts_as_paranoid
# == Associations =========================================================
  has_many :trips
# == Validations ==========================================================
  validates_presence_of  :longitude, :latitude
end
