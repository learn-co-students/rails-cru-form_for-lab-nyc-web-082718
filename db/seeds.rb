# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.new(name: "Good Song", artist_id: 1, genre_id: 1)
Song.new(name: "Bad Song", artist_id: 2, genre_id: 1)
