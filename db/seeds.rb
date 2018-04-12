5.times do
  puts "Creating a new user...."
  user = User.create!(name: Faker::HarryPotter.character, avatar: Faker::Placeholdit.image("50x50"), email: Faker::Internet.email, password: Faker::Internet.password)
  if user
    puts "Successfully saved #{user.name}!"
  else
    puts "Nothing saved"
  end
end

5.times do
  puts "Creating a new location..."
  Location.create(address: Faker::Address.street_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, name: Faker::Address.street_address)
end

User.all.each do |user|
  puts "Creating pins for user: #{user.name}..."
  Pin.create(user_id: user.id, location_id: Location.find(rand(1..5)).id,
             image: Faker::LoremPixel.image, upvotes: rand(1..300))
end
