class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    def show
        reviews = Review.where(song_id: params[:id])
        render json: reviews, status: :ok
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {}, status: :ok
    end

    private

    def review_params
        params.permit(:user_id, :song_id, :content)
    end

end
