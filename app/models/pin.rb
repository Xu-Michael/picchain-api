class Pin < ApplicationRecord
  belongs_to :location
  belongs_to :user
  validates :image, presence: true, uniqueness: { scope: :user }
  validates :latitude, presence: true
  validates :longitude, presence: true
end
