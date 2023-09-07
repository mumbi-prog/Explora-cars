# Comment out this line if you will run db:seed in production
pp 'Deleting old data...'

# Customer.destroy_all
puts '🌱 Seeding database...'

Customer.destroy_all
# Customers, associations -> has_many :bookings, has_many :cars, through: :bookings
customer1 = Customer.create(
  full_name: "Lilo Sarah",
  age: 30,
  email: "lilo@gmail.com",
  mobile_number: 254712345678,
  password: "liloo030",
)

customer2 = Customer.create(
  full_name: "Patrick Rotich",
  age: 28,
  email: "petrick@gmail.com",
  mobile_number: 254723456789,
  password: "patrick1212",
)

# Location.destroy_all
# Location, association -> has_many :cars
location1 = Location.create(
  name: "Mombasa",
  address: "1524 Malia Road",
  phone_number: "+254719871243",
)

location2 = Location.create(
  name: "Eldoret",
  address: "Eld-Avenue",
  phone_number: "+254791502643",
)

location3 = Location.create(
  name: "Kayole",
  address: "42 Serene Lane, Kayole Estate",
  phone_number: "+254710392333",
)

# Car.destroy_all
# Cars, associations -> belongs_to :location
car1 = Car.create(
  make: "Toyota",
  year: 2022,
  price_per_day: 2000,
  image_url: "https://images.91wheels.com//assets/b_images/main/models/profile/profile1660727109.png",
  transmission: "automatic",
  body_type: "Sedan",
  category: "Economy",
  fuel_consumption: 7.5,
  no_of_seats: 5,
  fuel_type: "gasoline",
  location: location1,
  is_rented: false,
)

car2 = Car.create(
  make: "Honda",
  year: 2021,
  price_per_day: 2200,
  image_url: "https://media.ed.edmunds-media.com/honda/cr-v/2024/oem/2024_honda_cr-v_4dr-suv_ex-l_fq_oem_1_1600.jpg",
  transmission: "automatic",
  body_type: "SUV",
  category: "Sport",
  fuel_consumption: 9.0,
  no_of_seats: 5,
  fuel_type: "diesel",
  location: location2,
  is_rented: false,
)

# Booking.destroy_all
# Bookings, associations -> car, customer
booking1 = Booking.create(
  start_date: Date.parse("2023-09-12"),
  end_date: Date.parse("2023-09-17"),
  customer: customer1,
  car: car1,
  total_price: (Date.parse("2023-09-17") - Date.parse("2023-09-12")).to_i * car1.price_per_day,
)

booking2 = Booking.create(
  start_date: Date.parse("2023-09-12"),
  end_date: Date.parse("2023-09-17"),
  customer: customer2,
  car: car2,
  total_price: (Date.parse("2023-09-17") - Date.parse("2023-09-15")).to_i * car1.price_per_day,
)
Review.create(title: 'Great car!', body: 'I love this car. Its comfortable and fuel-efficient.', rating: 5, car: car1)
Review.create(title: 'Good value for money', body: 'The Civic is a reliable and affordable choice.', rating: 4, car: car2)
Review.create(title: 'Awesome performance', body: 'The Mustang is a beast on the road!', rating: 5, car: car2)

puts "✅ Done seeding!"
