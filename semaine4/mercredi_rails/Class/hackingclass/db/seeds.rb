require 'faker'
15.times do
  cour = Cour.create(name: Faker::Hacker.adjective)
end

15.times do
  eleve = Eleve.create(name:Faker::RickAndMorty.character,cour_id:(rand(1..15)))
end