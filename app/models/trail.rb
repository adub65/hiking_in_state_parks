class Trail < ApplicationRecord
  belongs_to :state_park
  has_many :users, through: :hikes
  has_many :hikes
end
