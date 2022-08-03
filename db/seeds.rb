# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create!(username: "Aminesmahi")

category_1 = Category.create!(name: "Fiction", user: user_1)
category_2 = Category.create!(name: "Fiction", user: user_1)

book_1 = Book.create!(name: "Alchemist", author: "Paolo quelo", user: user_1)
book_2 = Book.create!(name: "Fall in love", author: "Amine", user: user_1)

book_1.categories << [category_1, category_2]