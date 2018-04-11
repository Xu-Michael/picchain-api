json.locations do
  json.array! @locations do |location|
    json.extract! location, :id, :longitude, :latitude, :name, :prize
  end
end
