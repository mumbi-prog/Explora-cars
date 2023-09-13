class LocationsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def index
        @locations = Location.all
        render json: @locations, status: :ok
    end

    def show
        @location = Location.find_by(name: params[:id])
        render json: @location.cars, status: :ok
    end

    def destroy
        @location = Location.find_by(id: params[:id])
        @location.destroy
        head :no_content
    end
    private
def render_not_found
    render json:{errors: ["Location not found"]}, status: :not_found
end

end
