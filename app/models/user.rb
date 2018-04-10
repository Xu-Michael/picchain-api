class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :pins
  has_many :locations, through: :pins
  validates :name, presence: true, uniqueness: true
end
