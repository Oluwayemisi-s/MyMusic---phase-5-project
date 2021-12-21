class PlaylistSongsController < ApplicationController

    def create
        song = PlaylistSong.create!(playlistSong_params)
        render json: song, status: :created
    end
        
    def show
        # byebug
        # user = User.find_by(id: session[:user_id])
        songs = PlaylistSong.where(playlist_id: params[:id])
        render json: songs, status: :ok
    end

    private

    def playlistSong_params
        params.permit(:playlist_id, :song_id)
    end


end
