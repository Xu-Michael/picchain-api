json.extract! @user, :id, :name, :avatar, :votes
json.user_pins do
  json.array! @users_pins do |pin|
    json.extract! pin, :id, :image, :upvotes, :location_id, :created_at, :location_name
  end
end
json.user_locations do
  json.array! @users_locations do |location|
    json.extract! location, :id, :top_pin, :longitude, :latitude, :name, :prize, :photo, :pins_count
  end
end
