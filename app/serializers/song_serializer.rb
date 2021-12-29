class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :thumbnail, :artist, :genre, :album, :mood, :link, :description

  has_many :reviews
  # , include ['reviews.user']
end
