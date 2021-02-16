# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

luke = User.create(name: 'Luke', image_url: 'https://upload.wikimedia.org/wikipedia/en/9/9b/Luke_Skywalker.png')


leia = User.create(name: 'Leia', image_url: 'https://upload.wikimedia.org/wikipedia/en/1/1b/Princess_Leia%27s_characteristic_hairstyle.jpg')
anakin = User.create(name: 'Anakin', image_url: 'https://upload.wikimedia.org/wikipedia/en/7/76/Darth_Vader.jpg')

users = User.create([
  { name: 'Obi-Wan', image_url: 'https://upload.wikimedia.org/wikipedia/en/3/32/Ben_Kenobi.png' },
  { name: 'Ahsoka' },
  { name: 'Han' },
  { name: 'Rey' }, { name: 'Finn' }, { name: 'Palpatine' },
])

cosmos = Space.create(user: luke, name: 'Living Force')

jedi = Frame.create(name: 'Jedi', about: 'Jedi Stuff', user: luke, space: cosmos)

luke_feed = Stream.create(name: 'Luke Log', about: 'all about the skywalker', user: luke, frame: jedi)
hello = Message.create(content: 'hi', stream: luke_feed, user: luke)

leia_feed = Stream.create(name: 'Leia Log', about: 'all about the skywalker II', user: leia, frame: jedi)
greeting = Message.create(content: 'hello', stream: leia_feed, user: leia)
