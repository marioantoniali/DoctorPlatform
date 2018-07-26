require 'faker'

10.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::PrincessBride.quote, postal_code: Faker::Address.postcode)
end

10.times do
    patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  end

30.times do
    appointment = Appointment.create(date: Faker::Time.between(DateTime.now - 1, DateTime.now), doctor_id: rand(1..10), patient_id: rand(1..10) )
end

