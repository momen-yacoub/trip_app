require 'sidekiq'

class UpdateTripLocationJob
  include Sidekiq::Worker

  def perform(trip_id, place_params)
    TripService.update_trip_last_location(trip_id, place_params)
  end
end
