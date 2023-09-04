class CarsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_car_not_found

    def index
        render json: Car.all, status: :ok
    end

    def create
        car = Car.create!(car_params)
        render json: car, status: :created
    end

    def show
        car = find_car
        render json: car, status: :ok
    end

    def update
        car = find_car
        car.update!(car_params)
        render json: car, status: :ok
    end

    def destroy
        car = find_car
        car.destroy!
        head :no_content
    end

    private

    def car_params
        params.permit(:make, :year, :price_per_day, :image_url, :transmission, :body_type, :category, :fuel_consumption, :no_of_seats, :fuel_type, :is_rented)
    end

    def find_car
        car = Car.find(params[:id])
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_car_not_found
        render json: {error: 'Car not found, try again'}, status: :not_found
    end
end
