class User < ApplicationRecord
  has_many :hikes
  has_many :trails, through: :hikes
  has_many :state_parks, through: :trails
  has_secure_password
  validates :full_name, :email, presence: true
  validates :email, uniqueness: true

  def total_hours_hiked
    hikes.map(&:duration).inject(:+)
  end

  def number_of_hikes
    hikes.count
  end
end
