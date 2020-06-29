class Hike < ApplicationRecord
  belongs_to :state_park
  belongs_to :user
  validates :duration, :date_hiked, presence: true
end
