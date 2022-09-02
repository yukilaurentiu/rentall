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

require "open-uri"

15.times do


  product = Product.new(
    title: Faker::Commerce.product_name,
    description: Faker::Commerce.material,
    category: Faker::Commerce.department(max: 2),
    price: Faker::Commerce.price,
    address: Faker::Address.country
  )
  file = URI.open("https://source.unsplash.com/random/800x800/?#{product.description}")
  product.photo.attach(io: file, filename: 'random.png', content_type: 'image/png')
  product.save
end
