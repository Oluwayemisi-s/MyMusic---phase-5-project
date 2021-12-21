class PlaylistsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        # byebug
        user = User.find_by(id: session[:user_id])
        playlists = Playlist.where(user_id: user.id)
        render json: playlists, status: :ok
    end

    def create
        playlist = Playlist.create!(playlist_params)
        render json: playlist, status: :created
    end

    def destroy
        playlist = Playlist.find(params[:id])
        playlist.destroy
        render json: {}, status: :ok
    end

    private

    def playlist_params
        params.permit(:playlist_name, :user_id)
    end

end
