class User < ApplicationRecord
    has_secure_password

    validates :name, :email, :password, :password_confirmation, presence: true
    validates :password, length: { minimum: 6 }
    validates :email, uniqueness: true

    has_many :playlists

    has_many :reviews
    has_many :reviewed_songs, through: :reviews, source: :song
end
