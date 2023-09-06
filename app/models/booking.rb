class Booking < ApplicationRecord
    belongs_to :customer
    belongs_to :car

    before_update :date_within_existing_ranges
    validates_presence_of :start_date,:end_date,:customer_id,:car_id
    validate :date_cannot_be_past
    validates :start_date, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
    validate :end_date_not_earlier_than_start_date
    validate :date_within_existing_ranges
    validate :check_car_availability
    
    def self.calculate_price(start_date,end_date,car_id)
        car = Car.find(car_id)
        date1 = Date.parse(start_date)
        date2 = Date.parse(end_date)
        total_price = (date2-date1).to_i*car.price_per_day
        total_price.to_f
    end
    def self.calculate_total_price(params)
        booking = Booking.find(params[:id])
        if params.key?(:start_date) && params.key?(:end_date)
            start = Date.parse(params[:start_date])
            total_price = (booking.end_date-start).to_i*booking.car.price_per_day
            total_price.to_f
        elsif params.key?(:end_date)
            date_end = Date.parse(params[:end_date])
            total_price = (end_date-booking.start_date).to_i*booking.car.price_per_day
            total_price.to_f
        elsif params.key?(:start_date)
            start_date = Date.parse(params[:start_date])
            date_end = Date.parse(params[:end_date])
            total_price = (end_date-start_date).to_i*booking.car.price_per_day
            total_price.to_f
        end
    end
    
    private
    def date_cannot_be_past
        if start_date.present? && start_date < Date.current
            errors.add(:start_date,"cannot be in the past")
        end
    end
    def end_date_not_earlier_than_start_date
        if start_date.present? && end_date.present? && end_date < start_date
            errors.add(:end_date,"Cannot be earlier than start date")
        end
    end
    def check_car_availability
        car = Car.find(self.car_id)
        if car.is_rented
            errors.add(:car_id,"Car is already rented")
        end
    end
    def date_within_existing_ranges
        
        car = Car.find(self.car_id)
    
        car.bookings.each do |existing_booking|
          if (self.start_date..self.end_date).overlaps?(existing_booking.start_date..existing_booking.end_date)
            errors.add(:start_date, "Date range overlaps with an existing booking")
            break
          end
        end
    end
    
end
