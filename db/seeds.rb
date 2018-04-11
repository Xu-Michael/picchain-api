5.times do
  puts "Creating a new user...."
  user = User.create!(name: Faker::HarryPotter.character, avatar: Faker::Avatar.image, email: Faker::Internet.email, password: Faker::Internet.password)
  if user
    puts "Successfully saved #{user.name}!"
  else
    puts "Nothing saved"
  end
end

puts "Creating new locations..."
Location.create(name: Faker::LordOfTheRings.location, prize: Faker::Zelda.item, address: Faker::Address.street_address, latitude: 31.2235, longitude: 121.4453)
Location.create(name: Faker::LordOfTheRings.location, prize: Faker::Zelda.item, address: Faker::Address.street_address, latitude: 31.2245, longitude: 121.4458)
Location.create(name: Faker::LordOfTheRings.location, prize: Faker::Zelda.item, address: Faker::Address.street_address, latitude: 31.2228, longitude: 121.4463)
Location.create(name: Faker::LordOfTheRings.location, prize: Faker::Zelda.item, address: Faker::Address.street_address, latitude: 31.2231, longitude: 121.4450)
Location.create(name: Faker::LordOfTheRings.location, prize: Faker::Zelda.item, address: Faker::Address.street_address, latitude: 31.2238, longitude: 121.4462)

User.all.each do |user|
  rand(1..6).times do
    puts "Creating pins for user: #{user.name}..."
    location = Location.find(rand(1..5))
    Pin.create(user_id: user.id, location_id: location.id,
               image: "https://picsum.photos/550/450/?random", upvotes: rand(1..300),
               longitude: location.longitude, latitude: location.latitude, tags: "#{Faker::Hipster.word}, #{Faker::Hipster.word}")
  end
end
