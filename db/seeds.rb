
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bishoom = { name: "Bishoom", address: "7 Boundary St, London", phone_number: "0299009900", category: "japanese" }
dishoom = { name: "Dishoom", address: "8 Debby St, Paris", phone_number: "0299009901", category: "french" }
eishoom = { name: "Eishoom", address: "9 Errie St, Toulouse", phone_number: "0299009902", category: "belgian" }
fishoom = { name: "Fishoom", address: "10 Furie St, Lyon", phone_number: "0299009903", category: "french" }
gishoom = { name: "Gishoom", address: "11 Gary St, London", phone_number: "0299009904", category: "japanese" }

[ bishoom, dishoom, eishoom, fishoom, gishoom ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
