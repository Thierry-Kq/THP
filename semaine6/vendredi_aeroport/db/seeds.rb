# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.all.destroy_all
Flight.all.destroy_all

airport_name = ["CDG", "ORY", "MTP", "AMS", "FLD", "BXL", "MAD", "ALG", "BRS", "VNZ"]


airport_name.each do |name|
  Airport.create(airport_code: name)
end


500.times do |n|
  Flight.create(duration: rand(100..1000), departure_date: Faker::Date.forward(23), departure_airport_id: rand(Airport.first.id..Airport.last.id), arrival_airport_id: rand(Airport.first.id..Airport.last.id))
end

