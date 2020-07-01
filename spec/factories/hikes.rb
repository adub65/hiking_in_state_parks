FactoryBot.define do
  factory :hike do
    duration { "2" }
    date_hiked { Date.today }
    trail
    user
  end
end