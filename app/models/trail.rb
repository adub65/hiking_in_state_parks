class Trail < ApplicationRecord
  belongs_to :state_park
  has_many :users, through: :hikes
  has_many :hikes
  validates :name, :distance, :difficlty, presence: true
  validates :name, uniqueness: true
end
