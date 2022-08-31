# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "Cleaning database"
Product.destroy_all

50.times do
  Product.create(
    title: Faker::Commerce.product_name + " " + Faker::Commerce.product_name,
    description: Faker::Commerce.material + " " + Faker::Commerce.material,
    category: Faker::Commerce.department(max: 5),
    price: Faker::Commerce.price
  )

puts "#{Product.last.title} was created"
end
