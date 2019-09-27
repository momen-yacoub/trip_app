FactoryBot.define do
  factory :trip do
    name Faker::Name.name
    city Faker::Address.city
    state "on_going"
    seats 4
    price 50
    association :driver, factory: :driver
    association :source, factory: :place
    association :destination, factory: :place
    association :last_location, factory: :place
  end
end
