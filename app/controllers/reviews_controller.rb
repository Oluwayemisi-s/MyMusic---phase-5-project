class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    private

    def review_params
        params.permit(:user_id, :song_id, :content)
    end

end
