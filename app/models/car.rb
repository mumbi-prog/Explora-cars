class Car < ApplicationRecord
    validates :make, presence: true, length: { maximum: 30 }
    validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1985, less_than_or_equal_to: Date.today.year }
    validates :price_per_day, presence: true, numericality: { greater_than: 0 }
    validates :image_url, presence: true, format: { with: /\Ahttps?:\/\/.+\.(png|jpg|jpeg)\z/i }
    validates :transmission, presence: true, inclusion: { in: ['automatic', 'manual', 'semi-automatic'] }
    validates :body_type, presence: true, inclusion: { in: ['Sedan', 'Hatchback', 'SUV', 'Convertible', 'Coupe', 'Minivan', 'Pickup truck', 'CrossOver'] }
    validates :category, presence: true, inclusion: { in: ['Luxury', 'Sport', 'Compact', 'Economy', 'Electric', 'Hybrid', 'Off-road', 'Vans and minivans'] }
    validates :fuel_consumption, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :no_of_seats, presence: true, numericality: { only_integer: true, greater_than: 1 }
    validates :fuel_type, presence: true, inclusion: { in: ['gasoline', 'diesel', 'electric', 'hybrid'] }
  
    def available?
      !is_rented
    end
  
    has_many :bookings, dependent: :destroy
    belongs_to :location
    has_many :reviews, dependent: :destroy
  
  end
  