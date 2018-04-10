class Pin < ApplicationRecord
  belongs_to :location
  belongs_to :user
  validates :image, presence: true
  validates_uniqueness_of :user_id, :scope => [ :location_id ]
end
