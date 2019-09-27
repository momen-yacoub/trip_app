class Trip < ApplicationRecord
  acts_as_paranoid

  STATES = {on_hold: 0,on_going: 1,completed: 2}.freeze
  enum state: STATES
# == Associations =========================================================
  has_one :driver
  has_one :source, class_name: "Place", foreign_key: "source_id"
  has_one :destination, class_name: "Place", foreign_key: "destination_id"
  has_one :last_location, class_name: "Place", foreign_key: "last_location_id"
# == Validations ==========================================================
  validates_presence_of  :name, :driver_id, :state, :source_id, :destination_id, :seats, :price
  validate :can_update_state, on: :update, if: :state_changed?
# == Scopes ===============================================================
  scope :name_contains, -> (name) { where('trips.name LIKE ?', "%#{name}%") }
  scope :city_contains, -> (city) { where('trips.city LIKE ?', "%#{city}%") }

  private

  def can_update_state
    if state < state_was
      errors.add('state', "state cannot change from #{state_was} to #{state}")
    end
  end
end
