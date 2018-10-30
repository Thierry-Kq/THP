require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Speciality.destroy_all
City.destroy_all


20.times do
  City.create(name:Faker::Address.city)
end

20.times do
  Doctor.create(city_id: (rand(City.first.id..City.last.id)) , first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code:Faker::Address.postcode)
end

20.times do
  Patient.create(city_id: (rand(City.first.id..City.last.id)), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do
  Appointment.create(city_id: (rand(City.first.id..City.last.id)), date:Faker::Date.forward(rand(1...30)),patient_id:rand(1...20), doctor_id:rand(1...20))
end

20.times do
  Speciality.create(name:Faker::Cannabis.cannabinoid)
end

100.times do |t|
  Speciality.find(rand(Speciality.first.id..Speciality.last.id)).doctors << Doctor.find(rand(Doctor.first.id..Doctor.last.id))
end
