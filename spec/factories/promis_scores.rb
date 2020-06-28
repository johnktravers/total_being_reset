FactoryBot.define do
  factory :promis_score do
    physical_options = [16.2, 19.9, 23.5, 26.7, 29.6, 32.4, 34.9, 37.4, 39.8, 42.3, 44.9, 47.7, 50.8, 54.1, 57.7, 61.9, 67.7]
    mental_options =   [21.2, 25.1, 28.4, 31.3, 33.8, 36.3, 38.8, 41.1, 43.5, 45.8, 48.3, 50.8, 53.3, 56.0, 59.0, 62.5, 67.6]

    global_physical { physical_options.sample }
    global_mental   { mental_options.sample }
    general_health  { Faker::Number.within(range: 1..5) }
    social          { Faker::Number.within(range: 1..5) }
    user
  end
end
