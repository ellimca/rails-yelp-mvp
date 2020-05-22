# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Le_Tournesol = { name: "Le_Tournesol", address: "2 Avenue de Lamballe", phone_number: "0145259594", category: "french" }
Daroco = { name: "Daroco", address: "3 Place Clément Ader", phone_number: "0144149191", category: "french" }
YUSHI_16 = { name: "YUSHI_16", address: "70 Rue de Longchamp", phone_number: "0781330320", category: "japanese" }
Le_Sarawan = { name: "Le_Sarawan", address: "111-113 Avenue d'Ivry", phone_number: "0145862511", category: "chinese" }
Pistolet_Kitchen = { name: "Pistolet_Kitchen", address: "78 Rue Réaumur", phone_number: "0787121066", category: "belgian" }

[Le_Tournesol, Daroco, YUSHI_16, Le_Sarawan, Pistolet_Kitchen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
