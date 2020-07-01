FactoryBot.define do
  factory :hike do
    duration { "2" }
    date_hiked { "02/05/2020" }
    trail
    user
  end
end