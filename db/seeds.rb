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
    name:         'Pizza Nico',
    address:      '1 route de Nico',
    category:     'italian'
  },
  {
    name:         'Chez Rico',
    address:      '5 cours Bordeaux',
    category:     'french'
  },
  {
    name:         'La Pomme',
    address:      'Avenue Pomme',
    category:     'japanese'
  },
  {
    name:         'Le Gourmet',
    address:      'Rue de la faim',
    category:     'belgian'
  },
  {
    name:         'Le Corona',
    address:      'Cours du dragon',
    category:     'chinese'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
