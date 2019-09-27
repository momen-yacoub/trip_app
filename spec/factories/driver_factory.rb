FactoryBot.define do
  factory :driver do
    name Faker::Name.name
    city Faker::Address.city
    phone_number Faker::PhoneNumber.phone_number
    available true
  end
end
