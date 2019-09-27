def init
  return if Trip.count > 0
  driver = create_driver
  trip = create_trip(driver)
end

def create_driver
  driver = Driver.create!(
    name: Faker::Name.name ,
    city: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    available: true
  )
end

def create_trip(driver)
  source = create_place
  destination = create_place
  last_location = create_place
  trip = Trip.create!(
    name: Faker::Name.name ,
    city: Faker::Address.city,
    driver_id: driver.id,
    state: 1,
    source_id: create_place.id,
    destination_id: create_place.id,
    last_location_id: create_place.id,
    seats: 4,
    price: 50
  )
end

def create_place
  place = Place.create!(
    name: Faker::Address.street_name,
    city: Faker::Address.city,
    longitude: Faker::Address.longitude,
    latitude: Faker::Address.latitude
  )
end

init
