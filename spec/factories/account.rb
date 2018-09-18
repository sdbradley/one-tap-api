FactoryBot.define do
  factory :account do
    name { Faker::Company.name }
    phone { Faker::PhoneNumber.phone_number }
    website { Faker::Internet.url }
  end
end
