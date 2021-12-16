class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :song
  has_one :user
end
