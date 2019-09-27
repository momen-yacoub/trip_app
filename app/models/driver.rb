class Driver < ApplicationRecord
  acts_as_paranoid
# == Associations =========================================================
  has_many :trips
# == Validations ==========================================================
  validates_presence_of  :name
end
