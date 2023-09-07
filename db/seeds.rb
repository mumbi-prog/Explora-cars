# Comment out this line if you will run db:seed in production
pp 'Deleting old data...'
Customer.destroy_all
Car.destroy_all
Location.destroy_all
Booking.destroy_all
Review.destroy_all
# Customer.destroy_all
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

cars_data = [
  {
    make: "Maserati Ghibli",
    year: 2023,
    price_per_day: 5000,
    image_url: "https://i.pinimg.com/564x/40/0f/38/400f385e0d7a4b6ce31a2d608066f7e4.jpg",
    transmission: "automatic",
    body_type: "Sedan",
    category: "Luxury",
    fuel_consumption: "20.5",
    no_of_seats: 5,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.first
  },
  {
    make: "Toyota cruiser hyryder",
    year: 2018,
    price_per_day: 3500,
    image_url: "https://i.pinimg.com/564x/b4/10/c9/b410c9f1f332d67275e860533d715d36.jpg",
    transmission: "manual",
    body_type: "SUV",
    category: "Off-road",
    fuel_consumption: "20.0",
    no_of_seats: 5,
    fuel_type: "hybrid",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Mercedes Benz R-Class",
    year: 2019,
    price_per_day: 2500,
    image_url: "https://i.pinimg.com/564x/83/af/0e/83af0e45daac6f97cd575e0448d10ce3.jpg",
    transmission: "manual",
    body_type: "SUV",
    category: "Economy",
    fuel_consumption: "15.0",
    no_of_seats: 5,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Mercedes Benz R-Class",
    year: 2019,
    price_per_day: 2500,
    image_url: "https://i.pinimg.com/564x/82/43/75/824375364f156c8e6c147c9a8a61a28f.jpg",
    transmission: "manual",
    body_type: "Hatchback",
    category: "Economy",
    fuel_consumption: "15.0",
    no_of_seats: 5,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.first
  },
  {
    make: "Nissan Juke",
    year: 2020,
    price_per_day: 1800,
    image_url: "https://i.pinimg.com/564x/b5/16/f9/b516f9eb567ca67b70c93a3dca90f7d0.jpg",
    transmission: "manual",
    body_type: "SUV",
    category: "Compact",
    fuel_consumption: "15.0",
    no_of_seats: 5,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.first
  },
  {
    make: "Bentley",
    year: 2021,
    price_per_day: 9000,
    image_url: "https://i.pinimg.com/564x/02/47/00/0247000022b0806852652364a87111c7.jpg",
    transmission: "automatic",
    body_type: "Hatchback",
    category: "Hybrid",
    fuel_consumption: "15.0",
    no_of_seats: 5,
    fuel_type: "hybrid",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Jaguar I-Pace",
    year: 2020,
    price_per_day: 8000,
    image_url: "https://i.pinimg.com/564x/ec/f8/86/ecf8860d9cb94f5775f03cbc3522ae85.jpg",
    transmission: "automatic",
    body_type: "Coupe",
    category: "Economy",
    fuel_consumption: "19.0",
    no_of_seats: 5,
    fuel_type: "electric",
    is_rented: false,
    location: Location.second
  },
  {
    make: "Dodge Caravan",
    year: 2016,
    price_per_day: 4000,
    image_url: "https://i.pinimg.com/564x/23/13/5a/23135aad9945ee0e84a1200381efb3d5.jpg",
    transmission: "manual",
    body_type: "Coupe",
    category: "Vans and minivans",
    fuel_consumption: "12.0",
    no_of_seats: 7,
    fuel_type: "diesel",
    is_rented: false,
    location: Location.second
  },
  {
    make: "Isuzu MUX",
    year: 2017,
    price_per_day: 3500,
    image_url: "https://i.pinimg.com/564x/2d/95/55/2d955565d5bdd8a8da70988a48d0a7ef.jpg",
    transmission: "manual",
    body_type: "Pickup truck",
    category: "Off-road",
    fuel_consumption: "18.0",
    no_of_seats: 5,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Toyota AYGO",
    year: 2019,
    price_per_day: 1700,
    image_url: "https://i.pinimg.com/564x/23/13/5a/23135aad9945ee0e84a1200381efb3d5.jpg",
    transmission: "automatic",
    body_type: "Coupe",
    category: "Economy",
    fuel_consumption: "12.0",
    no_of_seats: 2,
    fuel_type: "diesel",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Porsche CTR",
    year: 2022,
    price_per_day: 9000,
    image_url: "https://i.pinimg.com/564x/df/ab/d5/dfabd532e5f0f09de2af5e9ef5cd8b52.jpg",
    transmission: "automatic",
    body_type: "Convertible",
    category: "Sport",
    fuel_consumption: "19.0",
    no_of_seats: 2,
    fuel_type: "electric",
    is_rented: false,
    location: Location.first
  },
  {
    make: "L1 HongQi",
    year: 2016,
    price_per_day: 9000,
    image_url: "https://i.pinimg.com/564x/21/76/ae/2176ae9008e3d27a5025257920893828.jpg",
    transmission: "automatic",
    body_type: "Sedan",
    category: "Electric",
    fuel_consumption: "10.0",
    no_of_seats: 5,
    fuel_type: "electric",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Nissan",
    year: 2017,
    price_per_day: 2000,
    image_url: "https://i.pinimg.com/564x/a4/d2/fe/a4d2fe4b5834b88d09a3e6e12c582873.jpg",
    transmission: "manual",
    body_type: "Sedan",
    category: "Vans and minivans",
    fuel_consumption: "8.47",
    no_of_seats: 2,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.second
  },
  {
    make: "Mercedes Benz",
    year: 2017,
    price_per_day: 4500,
    image_url: "https://i.pinimg.com/564x/69/2e/14/692e14064a863a70d6096be7d37ee2a4.jpg",
    transmission: "automatic",
    body_type: "Convertible",
    category: "Sport",
    fuel_consumption: "17.95",
    no_of_seats: 5,
    fuel_type: "hybrid",
    is_rented: false,
    location: Location.last
  },
  {
    make: "Audi S SportBack",
    year: 2023,
    price_per_day: 5000,
    image_url: "https://i.pinimg.com/564x/4c/e2/0b/4ce20bfab7a4d6d2fb83b87a6ddff293.jpg",
    transmission: "manual",
    body_type: "Sedan",
    category: "Sport",
    fuel_consumption: "16.0",
    no_of_seats: 2,
    fuel_type: "hybrid",
    is_rented: false,
    location: Location.first
  },
  {
    make: "Mercedes SLK",
    year: 2023,
    price_per_day: 5000,
    image_url: "https://i.pinimg.com/564x/4c/e2/0b/4ce20bfab7a4d6d2fb83b87a6ddff293.jpg",
    transmission: "automatic",
    body_type: "Convertible",
    category: "Luxury",
  fuel_consumption: "13.0",
    no_of_seats: 2,
    fuel_type: "electric",
    is_rented: false,
    location: Location.second
  },
  {
    make: "Mazda CX-5",
    year: 2017,
    price_per_day: 2500,
    image_url: "https://i.pinimg.com/564x/d7/e4/cc/d7e4cc260427935aef6cb0b9aca25340.jpg",
    transmission: "automatic",
    body_type: "Sedan",
    category: "Compact",
  fuel_consumption: "8.0",
    no_of_seats: 5,
    fuel_type: "gasoline",
    is_rented: false,
    location: Location.last
  }
]

cars_data.each do |car_params|
  Car.create(car_params)
end

puts "Car records created successfully."

# Booking.destroy_all
# Bookings, associations -> car, customer
booking1 = Booking.create(
  start_date: Date.parse("2023-09-12"),
  end_date: Date.parse("2023-09-17"),
  customer: customer1,
  car: Car.first,
  total_price: (Date.parse("2023-09-17") - Date.parse("2023-09-12")).to_i * Car.first.price_per_day,
)

booking2 = Booking.create(
  start_date: Date.parse("2023-09-12"),
  end_date: Date.parse("2023-09-17"),
  customer: customer2,
  car: Car.last,
  total_price: (Date.parse("2023-09-17") - Date.parse("2023-09-15")).to_i * Car.first.price_per_day,
)
Review.create(title: 'Great car!', body: 'I love this car. Its comfortable and fuel-efficient.', rating: 5, car: Car.first)
Review.create(title: 'Good value for money', body: 'This is a reliable and affordable choice.', rating: 4, car: Car.last)
Review.create(title: 'Awesome performance', body: 'The car is a beast on the road!', rating: 5, car: Car.first)

puts "✅ Done seeding!"
