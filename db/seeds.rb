require 'faker'

#comment out this line if you will run db:seed in production
pp 'Deleting old data...' 

puts '🌱 Seeding database...'
# 5.times do 
#     full_name = Faker::Name.unique.name
#     phone_number = "2547" + rand(10_000_000_000..25_479_999_999).to_s
#     customer = Customer.create(
#       full_name: full_name,
#       age: rand(18..65),
#       email: Faker::Internet.email(name: full_name),
#       mobile_number: phone_number.to_i,
#       password:"#{full_name}2030",
#     )
#   end
# customer1 = Customer.create!(full_name:"Tabbs mugeni",age:19,email:"TabbsMugeni@gmail.com",mobile_number:254784748498,password:"tabbs@mugeni")
# customer2 = Customer.create!(full_name:"Bridgit Wanjiru",age:21,email:"BridgitWanjiru@gmail.com",mobile_number:254784778389,password:"Bridgo@wanjiru")
# customer3 = Customer.create!(full_name:"Isaac Ngahu",age:20,email:"IsaacNgahu@gmail.com",mobile_number:254738382924,password:"Izo@Ngahu")

#   car1 = Car.create(make:"Toyota",year:"2014",price_per_day:700.00,is_rented:true,transmission:"manual",body_type:"sedan",category:"luxury",fuel_consumption:"12L/km",no_of_seats:5,fuel_type:"gasoline")
#   car2 = Car.create(make:"Mitsubishi",year:"2015",price_per_day:1000.00,is_rented:false,transmission:"manual",body_type:"SUV",category:"Off-road",fuel_consumption:"8L/km",no_of_seats:7,fuel_type:"electric")
#   car3 = Car.create(make:"Mazda",year:"2018",price_per_day:500.00,is_rented:false,transmission:"automatic",body_type:"sedan",category:"town-car",fuel_consumption:"20L/km",no_of_seats:5,fuel_type:"hybrid")

#   booking1 = Booking.create!(start_date:'2023-09-06',end_date:'2023-09-10',total_price:4000.00,car_id:2,customer_id:1)
#   booking2 = Booking.create!(start_date:'2023-09-12',end_date:'2023-09-20',total_price:8000.00,car_id:2,customer_id:2)
#   booking3 = Booking.create!(start_date:'2023-09-21',end_date:'2023-09-30',total_price:9000.00,car_id:2,customer_id:3)
#   booking4 = Booking.create!(start_date:'2023-10-01',end_date:'2023-10-11',total_price:5000.00,car_id:3,customer_id:1)
#   booking5 = Booking.create!(start_date:'2023-10-13',end_date:'2023-10-19',total_price:3000.00,car_id:3,customer_id:2)
#   booking6 = Booking.create!(start_date:'2023-10-21',end_date:'2023-10-25',total_price:7500.00,car_id:3,customer_id:3)

# customer1 = Customer.create!(full_name: "Tabbs mugeni", age: 19, email: "TabbsMugei@gmail.com", mobile_number: 254785748498, password: "tabbs@mugeni")

# customer2 = Customer.create!(full_name: "Bridgit Wanjiru", age: 21, email: "BridgitWanjiru@gmail.com", mobile_number: 254784778389, password: "Bridgo@wanjiru")

# customer3 = Customer.create!(full_name: "Isaac Ngahu", age: 20, email: "IsaacNgahu@gmail.com", mobile_number: 254738382924,password: "Izo@Ngahu")

# car1 = Car.create(make: "Toyota",year: 2014, price_per_day: 700,is_rented: true,transmission: "manual",body_type: "sedan",category: "Luxury",fuel_consumption: 12.0,no_of_seats: 5,fuel_type: "gasoline")

# car2 = Car.create!(make: "Mitsubishi",year: 2015, price_per_day: 1000, is_rented: false, transmission: "manual",body_type: "SUV",category: "Sport",fuel_consumption: 8.0,no_of_seats: 7,fuel_type: "electric")

# car3 = Car.create!(make: "Mazda",year: 2018,price_per_day: 500, is_rented: false, transmission: "automatic",body_type: "sedan",category: "Compact",fuel_consumption: 20.0,no_of_seats: 5,fuel_type: "hybrid")

booking1 = Booking.create!(
  start_date: '2023-09-06',
  end_date: '2023-09-10',
  total_price: 4000.00,
  car_id: 2,
  customer_id: 1
)

booking2 = Booking.create!(
  start_date: '2023-09-12',
  end_date: '2023-09-20',
  total_price: 8000.00,
  car_id: 2,
  customer_id: 2
)

booking3 = Booking.create!(
  start_date: '2023-09-21',
  end_date: '2023-09-30',
  total_price: 9000.00,
  car_id: 3,
  customer_id: 3
)






  

  # car data
# Car.destroy_all

# 10.times do
#   car = Car.new(
#     make: Faker::Vehicle.make,
#     year: Faker::Number.between(from: 2002, to: Date.today.year),
#     price_per_day: Faker::Number.decimal(l_digits: 2, r_digits: 2),
#     image_url: Faker::Internet.url,
#     transmission: %w[automatic manual semi-automatic].sample,
#     body_type: %w[Sedan Hatchback SUV Convertible Coupe Minivan Pickup\ truck CrossOver].sample,
#     category: %w[Luxury Sport Compact Economy Electric Hybrid Off-road Vans\ and\ minivans].sample,
#     fuel_consumption: Faker::Number.decimal(l_digits: 1, r_digits: 2),
#     no_of_seats: Faker::Number.between(from: 2, to: 8),
#     fuel_type: %w[gasoline diesel electric hybrid].sample,
#     is_rented: [true, false].sample
#   )
#   car.save(validate: false) 


puts "✅ Done seeding!"