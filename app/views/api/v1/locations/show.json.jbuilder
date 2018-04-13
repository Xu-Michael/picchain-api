json.pins_of_location do
  json.array! @pins_of_location do |pin|
    json.extract! pin, :id, :image, :upvotes, :location_id, :created_at, :location_name, :user_name, :user_avatar
  end
end
