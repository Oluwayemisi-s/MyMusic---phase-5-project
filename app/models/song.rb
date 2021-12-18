class Song < ApplicationRecord

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

end
