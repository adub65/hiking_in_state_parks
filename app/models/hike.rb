class Hike < ApplicationRecord
  belongs_to :trail
  belongs_to :user
  validates :duration, :date_hiked, presence: true
end
