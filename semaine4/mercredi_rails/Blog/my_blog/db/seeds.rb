require 'faker'
15.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:Faker::Internet.email)
end

15.times do
  article = Article.create(user_id:(rand(1..15)), title: Faker::DrWho.villian, content:Faker::DrWho.quote)
end

15.times do
  comment = Comment.create(user_id:(rand(1..15)),article_id:(rand(1..15)),content: 
Faker::DrWho.catch_phrase)
end

15.times do
  category = Category.create(article_id:(rand(1..15)), name: Faker::ProgrammingLanguage.name)
end

15.times do
  like = Like.create(user_id:(rand(1..15)),article_id:(rand(1..15)))
end