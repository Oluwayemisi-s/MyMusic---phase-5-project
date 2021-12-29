class PlaylistSongSerializer < ActiveModel::Serializer
  attributes :id, :playlist_id, :song_id
  has_one :playlist
  has_one :song
end
