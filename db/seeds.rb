# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'creating fake flats...'
4.times do
  Flat.create(
    name: Faker::TvShows::GameOfThrones.city,
    address: Faker::Address.full_address,
    description: Faker::TvShows::GameOfThrones.quote,
    price_per_night: rand(75..400),
    number_of_guests: rand(2..6)
  )
end

puts 'done!'
