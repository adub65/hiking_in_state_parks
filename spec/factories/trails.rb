FactoryBot.define do
  factory :trail do
    name { "Three Rivers Heritage Trail" }
    distance { "25.9" }
    difficulty { "Medium" }
    trail_composition { "Paved" }
    state_park
  end
end