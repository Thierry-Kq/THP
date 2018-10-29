require 'faker'
20.times do
  user = User.create(name:Faker::FunnyName.name)
end

20.times do
  url = Link.create(user_id:(rand(1..20)),url:Faker::Internet.url)
end

20.times do
  coment = Comment.create(user_id:(rand(1..20)),link_id:(rand(1..20)),content:Faker::Simpsons.quote)
end

20.times do
  edit_comment = Edit.create(user_id:(rand(1..20)),comment_id:(rand(1..20)),content:Faker::NewGirl.quote)
end

