# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Review.destroy_all
Restaurant.destroy_all

# Create restaurants
restaurants_data = [
  { name: "Chez Pierre", address: "123 Main St", phone_number: "555-1234", category: "french" },
  { name: "Sushi Palace", address: "456 Oak St", phone_number: "555-5678", category: "japanese" },
  { name: "Mamma Mia", address: "789 Elm St", phone_number: "555-9876", category: "italian" },
  { name: "Wok Express", address: "101 Pine St", phone_number: "555-5432", category: "chinese" },
  { name: "Belgian Bites", address: "202 Cedar St", phone_number: "555-8765", category: "belgian" }
]

restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end

puts 'Seed completed successfully!'
