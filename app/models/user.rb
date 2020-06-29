class User < ApplicationRecord
  has_many :hikes
  has_many :trails, through: :hikes
  has_many :state_parks, through: :trails
  has_secure_password
  validates :full_name, presence: true
  validates :email, uniqueness: true
end
