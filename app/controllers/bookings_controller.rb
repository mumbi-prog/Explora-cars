class BookingsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid,with: :render_record_invalid
    def index
        # customer = Customer.find(session[:user_id])
        # bookings = customer.bookings
        render json: Booking.all,status: :ok
    end
    def show
        # customer = Customer.find(session[:user_id])
        # booking = customer.bookings.find(params[:id])
        booking = find_booking(params[:id])
        render json: booking
    end
    def create
        total_price = Booking.calculate_price(params[:start_date],params[:end_date],params[:car_id])
        booking = Booking.create!(start_date:params[:start_date],end_date:params[:end_date],car_id:params[:car_id],total_price:total_price,customer_id:params[:customer_id])
        render json: booking,status: :created
    end
    def update
        booking = find_booking(params[:id])
        total_price = booking.calculate_total_price(params[:id],params[:start_date],params[:end_date])
        updated_params = booking_params.merge(total_price:total_price)
        booking.update!(updated_params)
        render json: booking,status: :ok
    end
    def destroy
        booking = find_booking(params[:id])
        booking.destroy!
        head :no_content
    end
    def car_dates
        car = Car.find(params[:id])
        render json: car
    end
    def customer_bookings
        customer = Customer.find(params[:id])
        render json: customer.bookings
    end
    private
    def find_booking(id)
        booking = Booking.find(id)
    end
    def booking_params
        params.permit(:start_date,:end_date,:customer_id,:car_id, :id, :total_price)
    end
    def find_customer
        customer = Customer.find(session[:user_id])
    end
    def render_not_found
        render json: {error:["Booking not found"]},status: :not_found
    end
    def render_record_invalid(invalid)
        render json: {errors:[invalid.record.errors.full_messages]},status: :unprocessable_entity
    end
end
