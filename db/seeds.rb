# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    5.times do |i|
    artist = Artist.create(artist_name: "Artysta ##{i}")

    3.times do |i|
    disc = artist.discs.create(disc_name: "disc ##{i}", music_type:"pop")

    15.times do |i|
    song = disc.songs.create(song_name: "song ##{i}", track_number: i)

    end
    end
    end

