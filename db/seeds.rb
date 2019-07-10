# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '2343 7667 4343',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '3546 7463 7364',
    category:     'italian'
  },
  {
    name:         'Grib',
    address:      'Moskovskaya ulica 5 dom 2',
    phone_number: '5738 4834 4837',
    category:     'russian'
  },
  {
    name:         'Tekila',
    address:      'south street 45,3',
    phone_number: '3546 3984 7364',
    category:     'mexican'
  },
  {
    name:         'Sushi',
    address:      'very ordinary street 5',
    phone_number: '6372 8237 3874',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
