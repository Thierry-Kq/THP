require 'faker'
10.times do
  cours = Cour.create(title:Faker::HarryPotter.spell, description: Faker::HarryPotter.quote)
end

20.times do
  leson = Lesson.create(cour_id:(rand(1..10)),title:Faker::HowIMetYourMother.catch_phrase, body:Faker::HowIMetYourMother.quote)
end

