class User < ApplicationRecord
    has_secure_password

    has_many :playlists

    has_many :reviews
    has_many :reviewed_songs, through: :reviews, source: :song
end
