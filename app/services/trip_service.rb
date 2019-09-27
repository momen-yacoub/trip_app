class TripService

  def self.update_trip_last_location(trip_id, place_params)
    place = get_place(place_params)
    trip = Trip.find(trip_id)
    binding.pry
    unless place.id.nil? || trip.nil?
      trip.update(last_location_id: place.id)
    end
  end

  def self.get_place(place_params)
    place = Place.find_or_initialize_by(longitude: place_params["longitude"], latitude: place_params["latitude"])
    place.name = place_params["name"] unless place_params["name"].nil?
    place.city = place_params["city"] unless place_params["city"].nil?
    place.save
    return place
  end
end
