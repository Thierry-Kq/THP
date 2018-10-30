require 'faker'


Part.destroy_all
Assembly.destroy_all


20.times do |t|
  Assembly.create(name:Faker::StarWars.droid)
  Part.create(part_number:Faker::Code.asin)
end

200.times do |t|
  Assembly.find(rand(Assembly.first.id..Assembly.last.id)).parts << Part.find(rand(Part.first.id..Part.last.id))
end