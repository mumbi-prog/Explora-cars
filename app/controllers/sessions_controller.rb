class SessionsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def create
        @user = Customer.find_by(email: params[:email])
    
        if @user&.authenticate(params[:password])
          session[:user_id] = @user.id
          session[:full_name] = @user.full_name
          render json: { message: "Logged in as #{session[:full_name]}" }, status: :found
        else  
          render json: { errors: ["Wrong password, please try again."] }, status: :unauthorized
        end
      end

  def destroy
    if session[:user_id]
    session.delete(:user_id)
    session.delete(:full_name)
    head :no_content
    else
      render json: {errors: ["No logged in user found"]}
    end      
  end
  private

  def render_not_found
    render json: { errors: ['Invalid email address, please try again later'] }, status: 401
  end
  def login_params 
    params.permit(:email, :password)
  end
end
