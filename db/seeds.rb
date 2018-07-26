# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

num = 10
num.times do
	
	b = Doctor.create(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}", postal_code: 3134000)
	3.times do
		a = Speciality.create(speciality: "#{Faker::Job.field}")
		b.specialities << a

	end
end

num.times do
	Patient.create(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}")
end

num.times do
	Appointment.create(date: "#{Faker::Date.forward(30)}", patient_id: Random.new.rand(0..num-1), doctor_id: Random.new.rand(0..num-1))
end


puts "----------------------- Seed -----------------------"
puts " Created #{num.to_s} Doctors                      "
puts " Created #{num.to_s} Patients                     "
puts " Created #{3*num} specialities"
puts " Created #{num.to_s} Appointments                 "
puts "----------------------------------------------------"
