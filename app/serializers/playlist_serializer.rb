class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :playlist_name
  has_one :song
  has_one :user
end
