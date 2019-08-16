# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food, price: Faker::Number.number(digits: 5), origin: Faker::Nation)
end
p "Created #{Product.count} products"

# #
# products = Product.all
# 250.times do |index|
#     Review.create!(author: Faker::Superhero.name, content_body: Faker::Lorem.characters(number: 50), rating: Faker::Number.between(from: 0, to: 5), product_id: products.id)
# end
# # # Review.destroy_all
# p "Created #{Review.count} reviews"
