class CustomersController < ApplicationController
wrap_parameters format:[]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  def index 
    render json: Customer.all, status: :ok
  end
  def show
    user = Customer.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { errors: ['Not authorized'] }, status: :unauthorized
    end
  end

  def create
    user = Customer.create!(user_params)
    session[:user_id]=user.id
    render json: user, status: :created
  end
  def update 
    @user = Customer.find_by(email: params[:email])
    if @user && @user.age == params[:age]
    @user.update!(user_params)
    end
  end

  private

  def render_not_found
    render json: { errors: ['user not found'] }, status: :not_found
  end

  def render_unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end

  def user_params
    params.permit(:full_name, :password, :email, :age, :mobile_number)
  end
end
