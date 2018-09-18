FactoryBot.define do
    factory :user do
      first_name { Faker::Name.first_name }
      last_name { Faker::Name.last_name }
      email_address { Faker::Internet.email }
      password { Faker::Internet.password }
      is_approved true
    end
  end
