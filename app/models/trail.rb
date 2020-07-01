class Trail < ApplicationRecord
  belongs_to :state_park
  has_many :users, through: :hikes
  has_many :hikes
  validates :name, :distance, :difficulty, presence: true
  validates :name, uniqueness: true

  scope :easy_trail, -> { where(difficulty: "Easy") }
  scope :medium_trail, -> { where(difficulty: "Medium") }
  scope :hard_trail, -> { where(difficulty: "Hard") }

end
