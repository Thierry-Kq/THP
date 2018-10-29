require 'faker'
15.times do
  user = User.create(name: Faker::Name.male_first_name)
end

15.times do
  pin = Pin.create(url:Faker::Internet.url,user_id:(rand(1..15)))
end

15.times do
  comment = Comment.create(content:Faker::DrWho.catch_phrase,pin_id:(rand(1..15)),user_id:(rand(1..15)))
end