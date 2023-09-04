class CarsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_car_not_found

    def index
        render json: Car.all, status: :ok
    end

  

    def show
        car = find_car
        render json: car, status: :ok
    end

    private



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
