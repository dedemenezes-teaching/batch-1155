require 'faker'

puts 'Populating DB...'

10.times do |t|
  restaurant = Restaurant.new(
    name: "#{Faker::Movies::StarWars.character}'s Burger",
    address: Faker::Movies::StarWars.planet
  )
  restaurant.save
end

puts "Finished. Created #{Restaurant.count} restaurants"
