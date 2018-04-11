json.pins do
  json.array! @pins do |pin|
    json.extract! pin, :id, :image, :upvotes, :location_id, :user_id, :created_at
  end
end

