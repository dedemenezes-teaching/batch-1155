# # This is where you can create initial data for your app.

# # CLEAN YOUR DB
# Restaurant.destroy_all
# puts 'Database is clean!'

# puts "Creating restaurants..."
# restaurant_one = Restaurant.new(name: 'Outback', address: 'Botafogo')
# restaurant_one.save
# restaurant_one = Restaurant.new(name: 'Temakeria', address: 'Ipanema')
# restaurant_one.save

# puts 'Finished'

require 'faker'

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save!
end
puts 'Finished!'
