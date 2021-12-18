class SongsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        songs = Song.all
        render json: songs, status: :ok
    end

    def create
        song = Song.create!(song_params)
        render json: song, status: :created  
    end

    def getGenres
        genres = Song.allGenres
        render json: genres, status: :ok
    end

    def getArtists
        artists = Song.allArtists
        render json: artists, status: :ok
    end

    private
    def song_params
        params.permit(:title, :thumbnail, :artist, :genre, :album, :mood, :link, :description)
    end


end
