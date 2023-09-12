## Explora Cars
![alt text](https://github.com/mumbi-prog/ExploraCars-Client/blob/development/public/explora.jpeg?raw=true)
## Project Description

Explora is a web application that allows travellers to hire cars of their choice for ease in transportation in the destination area. 
Clients can view existing cars model, year, fuel consumption, fuel type, transmission, number of seats and if available. 
Clients are allowed to create their own accounts to keep track of their booking history. The accounts can be deleted at any time by them. Data privacy is respected.

Cars are booked according to location and once booked, they cannot be double booked. 

## Author

This project was developed by the following developers courtesy of Moringa School.
- Sylvia Mumbi
- Donvine Mugendi
- Isaac Ngahu
- Jeff Mwaura
- Maureen Omamo 

Project TM: Rhona Joy and Erick Mong'are Thank you and do enjoy.
## Deployed Site
View the deployed frontend site here [explora-cars.vercel.app](hhttps://explora-cars.vercel.app/)
View the deployed API here [explora-api.up.railway.app](https://explora-api.up.railway.app)
## Project Setup Instructions

To set up and run the Explora project locally, follow these steps:

FrontEnd -> `git clone git@github.com:mumbi-prog/ExploraCars-Client.git`
BackEnd -> `git@github.com:mumbi-prog/Explora-cars.git`
Live Site link: https://explora-cars-production.up.railway.app/customers

# Change to project directory

`cd ExploraCars-Client`
`cd Explora-Cars`

# Install the required dependencies

`npm install`
This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

# Start the development server

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## BackEnd Installation

Make sure you have Ruby installed on your system. You can check by running ruby -v in the terminal. If it's not installed, download and install Ruby from the official website (https://www.ruby-lang.org/en/downloads/).

`ruby "2.7.4"`

# Ruby Dependencies

Add the following gems and then run `bundle install`
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

`gem "rails", "~> 7.0.7", ">= 7.0.7.2"`
`gem "pg", "~> 1.1"`
`gem "puma", "~> 5.0"`
`gem 'redis', '~> 4.0'`
`gem 'bcrypt', '~> 3.1.7'`
`gem 'bootsnap', '>= 1.4.4', require: false`
`gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]`
`gem "rack-cors"`
`gem 'rack-attack', '~> 6.7'`
`gem "active_model_serializers", "~> 0.10.13"`
`gem "faker", "~> 3.2"`

# PostgreSQL Installation

Using Linux (Ubuntu/Debian)

1. Install the Package Manager: Open a terminal and run the following commands:
`sudo apt update sudo apt install postgresql postgresql-contrib`

2. PostgreSQL Global Development Group's APT Repository (recommended): Add the PostgreSQL Global Development Group's APT repository to your system and install PostgreSQL by running the following commands: `sudo apt update sudo apt install postgresql`
For Windows and macOS versions, refer to the internet documentation.

3. Start the PostgreSQL Server: The installation process typically starts the PostgreSQL server automatically. 
If not, you can start it manually using the following command: `sudo service postgresql start`

4. Create a PostgreSQL User and Database: By default, PostgreSQL creates a user named "postgres" during installation. 
You can use this user or create a new one. To create a new user and a database, follow these steps:

Log in as the "postgres" user: `sudo -u postgres psql`

Create a new user and database (replace "username" and "database_name" with your desired values): 
`CREATE USER username WITH PASSWORD 'your_password';`
`CREATE DATABASE database_name OWNER username;`

Grant necessary privileges to the user (optional): `ALTER USER username CREATEDB;`

Exit the PostgreSQL prompt: `\q`

5. Configure PostgreSQL Authentication: By default, PostgreSQL uses peer authentication on Unix-like systems. 
You may want to change this to password authentication or use other authentication methods. Update the `pg_hba.conf` file to configure authentication.

Connect to PostgreSQL: You can now connect to PostgreSQL using the command-line client `"psql"` or a graphical client like pgAdmin.

# Set up basic backend structure

Define Models

There are 4No. Models
`Customer`

- Attributes: email, password_digest (for authentication), full_name, age (btn 18 and 65), phone_number
- Relationships: One-to-Many with Booking
- Routes: Sign Up, Log In, Log Out

`Car`

- Attributes: make, year, price_per_day, is_rented, transmission (automatic, manual, semi-automatic), body_type(vans, pickup truck, SUV…etc), category (luxury, sport, compact .etc) fuel_consumption, no_of_seats, fuel_type(gasoline, diesel, electric. Etc)
- Relationships: One-to-one with Booking 
- Routes: List all cars, View car details

`Booking`

- Attributes: start_date, end_date, user_id, car_id, total_price
- Relationships: Belongs to User and Car
- Routes: Create, Read, Update, Delete booking

`Location`

- Attributes: name, address, phone_number
- Car belongs to location
- Routes: Location.cars



# Test Your API:

Use tools like ThunderBolt, or Postman, or your frontend application to test your API endpoints and make sure everything is working as expected.

# Live SIte Deployment

Deploy your backend to a production server using platforms like Heroku or AWS or Vercel or Netlify.
Live Site
You can access the live version of the Transaction Tracker application on GitHub Pages by visiting the following link: https://explora-cars-production.up.railway.app/customers

# Copyright and License

Explora is licensed under the Moringa License. 
You are free to use, modify, and distribute the code as long as you include the appropriate copyright notice and adhere to the terms of the Moringa License.

Please note that the data used in the application is for demonstration purposes only and should not be used for any real car hire transactions.

GOD Bless You. Happy Coding!!






# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.7.4
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
