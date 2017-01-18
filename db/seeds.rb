# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.new(name: "Parmeggiano Reggiano", price: 15, color: "pale-ish yellow", description: "VERY fancy cheese")
product.save

product = Product.new(name: "Romano", price: 6, color: "white", description: "Not the sitcom character")
product.save

product = Product.new(name: "Whiz", price: 3, color: "neon orange", description: "It comes in a can.  Pretty neat!")
product.save

product = Product.new(name: "Brie", price: 8, color: "white, with weird rind", description: "Also a woman's name")
product.save

product = Product.new(name: "White Cheddar", price: 5, color: "See: Name", description: "Like cheddar, but different")
product.save