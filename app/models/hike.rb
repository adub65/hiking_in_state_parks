class Hike < ApplicationRecord
  belongs_to :state_park
  belongs_to :user
end
