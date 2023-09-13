# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0123456778', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0123456778', category: 'italian' }
mozambique = { name: 'Mozambique', address: 'really lovely place 7549', phone_number: '0123456778', category: 'french' }
rocco_mamas = { name: 'Rocco mamas', address: 'mamas road,Cape town CBD', phone_number: '0123456778', category: 'japanese' }
chefs = { name: 'Chefs', address: 'Cavendish square', phone_number: '0123456778', category: 'belgian' }

[dishoom, pizza_east, mozambique, rocco_mamas, chefs].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
# puts "#{Restaurant.count} restaurants created"
puts 'Finished!'
