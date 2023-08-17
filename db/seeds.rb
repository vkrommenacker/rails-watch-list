# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'




Movie.destroy_all

20.times do
 @movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Restaurant.review,
    poster_url: Faker::LoremFlickr.image,
    rating: rand * 10
    )
end
