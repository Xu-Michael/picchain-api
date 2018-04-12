json.pins_by_upvotes do
  json.array! @sorted_by_upvotes do |pin|
    json.extract! pin, :id, :image, :upvotes, :location_id, :created_at
  end
end
json.pins_by_date do
  json.array! @sorted_by_date do |pin|
    json.extract! pin, :id, :image, :upvotes, :location_id, :created_at
  end
end
