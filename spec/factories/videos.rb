FactoryBot.define do
  factory :video do
    title       { Faker::Movie.title }
    description { Faker::Lorem.paragraph }
    thumbnail   { Faker::Internet.url }
    youtube_id  { Faker::Number.hexadecimal(digits: 12) }
    type        { [0, 1].sample }
  end
end
