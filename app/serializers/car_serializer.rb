class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :year, :price_per_day, :image_url, :transmission, :body_type, :category, :fuel_consumption, :no_of_seats, :fuel_type, :is_rented
  has_many :bookings
end
