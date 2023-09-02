require 'faker'

#comment out this line if you will run db:seed in production
pp 'Deleting old data...' 
Customer.delete_all
puts '🌱 Seeding database...'
5.times do 
    full_name = Faker::Name.unique.name
    phone_number = "2547" + rand(10_000_000_000..25_479_999_999).to_s
    customer = Customer.create(
      full_name: full_name,
      age: rand(18..65),
      email: Faker::Internet.email(name: full_name),
      mobile_number: phone_number.to_i,
      password:"#{full_name}2030",
    )
  end

puts "✅ Done seeding!"