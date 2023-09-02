class SessionsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def create
        @user = Customer.find_by(email: params[:email])
    
        if @user&.authenticate(params[:password])
          session[:user_id] = @user.id
          session[:fullname] = @user.fullname
          render json: { message: "Logged in as #{session[:fullname]}" }, status: :found
        else  
          render json: { error: "Wrong password, please try again." }, status: :unauthorized
        end
      end

  def destroy
    if session[:user_id]
    session.delete(:user_id)
    head :no_content
    else
      render_not_found
    end      
  end
  private

  def render_not_found
    render json: { error: 'Invalid email address, please try again later' }, status: 401
  end
end
