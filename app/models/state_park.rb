class StatePark < ApplicationRecord
  has_many :trails
  validates :name, :address, :county, presence: true
  validates :name, uniqueness: true
end
