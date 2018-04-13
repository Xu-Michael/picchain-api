class Location < ApplicationRecord
  has_many :pins, dependent: :destroy
  has_many :users, through: :pins
  validates :longitude, presence: true, uniqueness: true
  validates :latitude, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  def pins_count
    pins.count
  end

  def top_pin
    pins.order("#{:upvotes} DESC").first
  end
end
