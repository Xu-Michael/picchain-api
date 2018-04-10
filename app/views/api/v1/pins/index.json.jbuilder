json.pins do
  json.array! @pins do |pin|
    json.extract! pin, :id, :image, :upvotes
  end
end
