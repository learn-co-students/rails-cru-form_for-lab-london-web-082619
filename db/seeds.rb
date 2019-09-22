# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Kanye West", bio: "I am a douche bag")
Genre.create(name: "Hip-Hop")
s1 = Song.create(name: "Empire State of Mind")
s2 = Song.create(name: "Graduation")

s1.artist_id = Artist.all.first.id 
s1.save
s2.artist_id = Artist.all.first.id 
s2.save

s1.genre_id = Genre.all.first.id 
s1.save
s2.genre_id = Genre.all.first.id 
s2.save