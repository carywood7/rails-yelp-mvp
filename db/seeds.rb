# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Seeding…"
Restaurant.destroy_all
r = Restaurant.create!([
  { name: "Chez Pierre", address: "10 Rue de Rivoli, Paris", category: "french" },
  { name: "Sakura", address: "2 Chome-3 Shibuya, Tokyo", category: "japanese" },
  { name: "Roma Mia", address: "Via Condotti, Rome", category: "italian" }
])
r.first.reviews.create!(rating: 4, content: "Lovely classic dishes.")
r.last.reviews.create!(rating: 5, content: "Perfect pasta!")
puts "Done."
