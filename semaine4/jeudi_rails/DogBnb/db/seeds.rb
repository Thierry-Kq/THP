require 'faker'

Dog.destroy_all
DogSitter.destroy_all
Stroll.destroy_all


5.times do |t|
  City.create(city_name: Faker::Address.city)
end 

50.times do |t|
  Dog.create(name: Faker::Superhero.name, city_id: rand(1..5))
  DogSitter.create(name: Faker::Name.middle_name, city_id: rand(1..5))
end 


5.times do |t|
  Stroll.create(name: Faker::Address.street_address, dog_id: rand(Dog.first.id..Dog.last.id), dog_sitter_id: rand(Dog.first.id..Dog.last.id)) 
end 