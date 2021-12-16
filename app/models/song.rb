class Song < ApplicationRecord

    has_many :playlists
    has_many :users, through: :playlists

    has_many :reviews
    has_many :user_reviews, through: :reviews, source: :song
end
