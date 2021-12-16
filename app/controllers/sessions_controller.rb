class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :ok
    else
      render json: {errors: ["Invalid username or password"]}, status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
    render json: {errors: ["Please log in to continue"]}, status: :unauthorized
  end
end
