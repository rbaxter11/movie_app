require 'ffaker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# 10.times do 
#   actor = Actor.new(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
#   actor.save
# end

movie = Movie.create(title: "Tommy Boy", year: 1995, plot: "After his auto-parts tycoon father dies, the overweight, underachieving son teams up with a snide accountant to try and save the family business.")
movie = Movie.create(title: "Inception", year: 2010, plot: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.")