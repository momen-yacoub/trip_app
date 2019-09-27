FactoryBot.define do
  factory :place do
    name Faker::Address.street_name
    city Faker::Address.city
    longitude Faker::Address.longitude
    latitude Faker::Address.latitude
  end
end
