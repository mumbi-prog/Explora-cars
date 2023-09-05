require 'faker'

#comment out this line if you will run db:seed in production
# pp 'Deleting old data...' 
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


  # car data
Car.destroy_all

10.times do
  car = Car.new(
    make: Faker::Vehicle.make,
    year: Faker::Number.between(from: 2002, to: Date.today.year),
    price_per_day: Faker::Number.decimal(l_digits: 2, r_digits: 2),
    image_url: Faker::Internet.url,
    transmission: %w[automatic manual semi-automatic].sample,
    body_type: %w[Sedan Hatchback SUV Convertible Coupe Minivan Pickup\ truck CrossOver].sample,
    category: %w[Luxury Sport Compact Economy Electric Hybrid Off-road Vans\ and\ minivans].sample,
    fuel_consumption: Faker::Number.decimal(l_digits: 1, r_digits: 2),
    no_of_seats: Faker::Number.between(from: 2, to: 8),
    fuel_type: %w[gasoline diesel electric hybrid].sample,
    is_rented: [true, false].sample
  )
  car.save(validate: false) 
end


puts "✅ Done seeding!"