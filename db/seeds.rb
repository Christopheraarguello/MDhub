# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DRTYPE = "General"
25.times do
dr_data = {
  name: Faker::Name.unique.name,
  # type: DRTYPE
}
Doctor.create(dr_data)
end
puts "#{Doctor.count} Doctor's were created"


50.times do
  data = {
    name: Faker::Name.unique.name,
    weight: rand(120..300),
    doctor_id: rand(1..10),
    height: 6

  }
  Patient.create(data)
end
puts "#{Patient.count} Patient's were created"


# arr = [(1..50)]
m = 1
12.times do |m|
  i = 0
  50.times do |i|
    wdata = {
      weight: rand(120..300),
      weigh_month: m,
      patient_id: i +=1,
    }
    Weight.create(wdata)
  end
  m +=1
end
puts "#{Weight.count} Weight records were created"






# 50.times do
#   Doctor.order("RANDOM()").first.patients << Patient.order("RANDOM()").first
# end
