class User < ApplicationRecord
  has_many :pins
  has_many :locations, through: :pins
  validates :name, presence: true, uniqueness: true
end
