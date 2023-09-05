require 'faker'

#comment out this line if you will run db:seed in production

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
# customer1 = Customer.create!(full_name:"Tabbs mugeni",age:19,email:"Tabbsmugeni@gmail.com",mobile_number:254784748498,password:"tabbs@mugeni")
# customer2 = Customer.create!(full_name:"Bridgit Wanjiru",age:21,email:"BridgitWanjiru@gmail.com",mobile_number:254784778389,password:"Bridgo@wanjiru")
# customer3 = Customer.create!(full_name:"Isaac Ngahu",age:20,email:"IsaacNgahu@gmail.com",mobile_number:254738382924,password:"Izo@Ngahu")

#   car1 = Car.create(make:"Toyota",year:"2014",price_per_day:700.00,is_rented:true,transmission:"Manual",body_type:"sedan",category:"luxury",fuel_consumption:"12km/l",no_of_seats:5,fuel_type:"Petrol")
#   car2 = Car.create(make:"Mitsubishi",year:"2015",price_per_day:1000.00,is_rented:false,transmission:"manual",body_type:"SUV",category:"Off-road",fuel_consumption:"8km/l",no_of_seats:7,fuel_type:"Diesel")
#   car3 = Car.create(make:"Mazda",year:"2018",price_per_day:500.00,is_rented:false,transmission:"automatic",body_type:"sedan",category:"town-car",fuel_consumption:"20km/l",no_of_seats:5,fuel_type:"petrol")

  booking1 = Booking.create!(start_date:'2023-09-04',end_date:'2023-09-10',total_price:4200.00,car_id:1,customer_id:1)
  booking2 = Booking.create!(start_date:'2023-09-05',end_date:'2023-09-11',total_price:6000.00,car_id:2,customer_id:2)
  booking3 = Booking.create!(start_date:'2023-09-06',end_date:'2023-09-12',total_price:3000.00,car_id:3,customer_id:3)
  
puts "✅ Done seeding!"