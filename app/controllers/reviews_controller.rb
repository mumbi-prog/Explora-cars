# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
  before_action :set_car

  def index
    @reviews = @car.reviews
    render json: @reviews
  end

  def create
    @review = @car.reviews.build(review_params)
    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.permit(:title, :body, :rating)
  end
end
