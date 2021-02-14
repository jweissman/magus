# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

luke = User.create(name: 'Luke')
leia = User.create(name: 'Leia')

users = User.create([
  { name: 'Anakin', image_url: 'https://upload.wikimedia.org/wikipedia/en/7/76/Darth_Vader.jpg' },
  { name: 'Obi-Wan', image_url: 'https://upload.wikimedia.org/wikipedia/en/3/32/Ben_Kenobi.png' },
  { name: 'Ahsoka' },
  { name: 'Han' },
  { name: 'Rey' }, { name: 'Finn' }, { name: 'Palpatine' },
])

frames = Frame.create([
  { about: 'jedi stuff', user: luke },
  { about: 'resistance', user: leia }
])
