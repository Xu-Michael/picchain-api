json.pins_same_location do
  json.array! @pins_same_location do |pin|
    json.extract! pin, :id, :image, :upvotes, :location_id, :created_at, :location_name, :user_name, :user_avatar
  end
end
