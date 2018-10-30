require 'faker'
City.destroy_all
User.destroy_all
Tag.destroy_all
Buzz.destroy_all



10.times do

  City.create(name:Faker::Hobbit.location,postal_code:Faker::Address.postcode)

  User.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name,email:Faker::Internet.email,age:rand(15..70),description:Faker::Hobbit.quote,city_id:(rand(City.first.id..City.last.id)))


  Tag.create(title:"##{Faker::Beer.style}",user_id:rand(User.first.id..User.last.id))
end

20.times do 

  Buzz.create(title:Faker::Beer.hop,content:Faker::ChuckNorris.fact,date:Faker::Date.forward(rand(1...30)),user_id:(rand(User.first.id..User.last.id)))

end



100.times do |t|
  Buzz.find(rand(Buzz.first.id..Buzz.last.id)).tags << Tag.find(rand(Tag.first.id..Tag.last.id))
end
