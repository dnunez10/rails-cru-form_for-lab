# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Artist.destroy_all
Genre.destroy_all


acdc = Artist.create(name: "AC/DC", bio: "Let's Rock!")
shakira = Artist.create(name: "Shakira", bio: "I like to dance!")

rock = Genre.create(name: "rock")
pop = Genre.create(name: "pop")

bb = Song.create(name: "Back in Black", artist_id: acdc.id, genre_id: rock.id)
hdl = Song.create(name: "Hips Don't Lie", artist_id: shakira.id, genre_id: pop.id)