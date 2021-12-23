class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    #before_action :is_authorised, only: [:update, :destroy]


    def create 
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        user = current_user
        if user
            render json: user, status: :ok
        else
            render json: {errors: ["Login to continue"]}, status: :unauthorized
        end
    end

    def update
        user = User.find(params[:id])
        if user&.authenticate(params[:password])
            user.update!(user_params)
            render json: user, status: :ok
        else
            render json: ["You have entered an incorrect password to your account"]
        end
    end

    private
    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
