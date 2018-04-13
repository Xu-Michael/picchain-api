json.locations do
  json.array! @locations_result do |location|
    json.extract! location, :id, :top_pin, :longitude, :latitude, :name, :prize, :photo, :pins_count
  end
end
