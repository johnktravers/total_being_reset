FactoryBot.define do
  factory :user do
    full_name       { Faker::Name.name }
    email           { Faker::Internet.email }
    veteran?        { [true, false].sample }
    veteran_family? { [true, false].sample }
    password_digest { Faker::Number.hexadecimal(digits: 20) }
    role            { 0 }
  end
end
