class Location < ApplicationRecord
  has_many :pins, dependent: :destroy
  has_many :users, through: :pins
  validates :lng, presence: true, uniqueness: true
  validates :lat, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
end
