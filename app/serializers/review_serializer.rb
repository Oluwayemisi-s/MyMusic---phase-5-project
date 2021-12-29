class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id
  has_one :song
  has_one :user
end
