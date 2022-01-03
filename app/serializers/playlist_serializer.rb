class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :playlist_name

  has_many :playlist_songs
  has_one :user
end
