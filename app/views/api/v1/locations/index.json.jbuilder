json.locations do
  json.array! @locations_result do |location|
    json.extract! location, :id, :longitude, :latitude, :name, :prize, :photo
  end
end
