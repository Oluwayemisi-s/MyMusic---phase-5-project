class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :playlist_name
  has_one :user
end
