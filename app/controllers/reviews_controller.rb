class ReviewsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_review_not_found
  
  def index
        render json: Review.all, status: :ok
  end

  def create
        review = Review.create!(review_params)
        render json: review, status: :created
  end

  def show
        review = find_review
        render json: review, status: :ok
  end

  private

  def find_review
        review = Review.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  def render_review_not_found
        render json: {error: 'Review not found, try again'}, status: :not_found
  end

  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end
end
