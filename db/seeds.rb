# Comment out this line if you will run db:seed in production
pp 'Deleting old data...'

# Customer.destroy_all
puts '🌱 Seeding database...'

Customer.destroy_all
# Customers, associations -> has_many :bookings, has_many :cars, through: :bookings
customer1 = Customer.create!(
  full_name: "Lilo Sarah",
  age: 30,
  email: "lilo@gmail.com",
  mobile_number: 254712345678,
  password: "liloo030",
)

customer2 = Customer.create!(
  full_name: "Patrick Rotich",
  age: 28,
  email: "petrick@gmail.com",
  mobile_number: 254723456789,
  password: "patrick1212",
)

# Location.destroy_all
# Location, association -> has_many :cars
location1 = Location.create!(
  name: "Mombasa",
  address: "1524 Malia Road",
  phone_number: "+254719871243",
)

location2 = Location.create!(
  name: "Eldoret",
  address: "Eld-Avenue",
  phone_number: "+254791502643",
)

location3 = Location.create!(
  name: "Kayole",
  address: "42 Serene Lane, Kayole Estate",
  phone_number: "+254710392333",
)

# Car.destroy_all
# Cars, associations -> belongs_to :location
car1 = Car.create!(
  make: "Toyota",
  year: 2022,
  price_per_day: 100,
  image_url: "https://example.com/toyota.jpg",
  transmission: "automatic",
  body_type: "Sedan",
  category: "Economy",
  fuel_consumption: 7.5,
  no_of_seats: 5,
  fuel_type: "gasoline",
  location: location1,
  is_rented: true,
)

car2 = Car.create!(
  make: "Honda",
  year: 2021,
  price_per_day: 120,
  image_url: "https://example.com/honda.jpg",
  transmission: "automatic",
  body_type: "SUV",
  category: "Sport",
  fuel_consumption: 9.0,
  no_of_seats: 5,
  fuel_type: "diesel",
  location: location2,
  is_rented: true,
)

# Booking.destroy_all
# Bookings, associations -> car, customer
booking1 = Booking.create!(
  start_date: Date.parse("2023-09-12"),
  end_date: Date.parse("2023-09-17"),
  customer: customer1,
  car: car1,
  total_price: (Date.parse("2023-09-17") - Date.parse("2023-09-12")).to_i * car1.price_per_day,
)

booking2 = Booking.create!(
  start_date: Date.parse("2023-09-12"),
  end_date: Date.parse("2023-09-17"),
  customer: customer2,
  car: car2,
  total_price: (Date.parse("2023-09-17") - Date.parse("2023-09-15")).to_i * car1.price_per_day,
)

puts "✅ Done seeding!"
