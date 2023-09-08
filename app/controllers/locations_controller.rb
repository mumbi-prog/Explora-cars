class LocationsController < ApplicationController
    def index
        @locations = Location.all
        render json: @locations
    end

    def show
        @location = Location.find(params[:id])
        render json: @location
    end

    def destroy
        @location = Location.find_by(id: params[:id])
        @location.destroy
        head :no_content
    end
end
