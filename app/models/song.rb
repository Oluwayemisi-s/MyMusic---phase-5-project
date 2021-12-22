class Song < ApplicationRecord

    validates :title, :thumbnail, :artist, :genre, :album, :mood, :link, :description, presence: true

    has_many :playlist_songs
    has_many :playlists, through: :playlist_songs

    has_many :reviews
    has_many :user_reviews, through: :reviews, source: :song

    def self.allGenres
        genres = Song.pluck(:genre).uniq
    end

    def self.allArtists
        genres = Song.pluck(:artist).uniq
    end

    def self.filterSongs(name)
        songs = Song.where(genre: name) 
        if songs.length == 0
            songs = Song.where(artist: name)  
        end
        songs
    end


end
