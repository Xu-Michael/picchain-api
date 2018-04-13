class Location < ApplicationRecord
  belongs_to :user
  has_many :pins, dependent: :destroy
  has_many :users, through: :pins
  validates :longitude, presence: true, uniqueness: true
  validates :latitude, presence: true, uniqueness: true

  def pins_count
    pins.count
  end

  def top_pin
    pins.order("#{:upvotes} DESC").first
  end

  after_validation :log_errors, :if => Proc.new {|m| m.errors}

  def log_errors
    Rails.logger.debug self.errors.full_messages.join("\n")
  end
end
