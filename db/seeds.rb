# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
maison = {name: "Maison du bonheur", address: "7 Boundary St, London E2 7JE", description: "ideal for 3", price_per_night: 75, number_of_guests: 3}
tarata = {name: "Tarata's", address: "120 rue de Vaugirard", description: "ideal for a family, quiet", price_per_night: 150, number_of_guests: 5}

[maison, tarata].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
