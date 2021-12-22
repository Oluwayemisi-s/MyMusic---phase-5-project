class Review < ApplicationRecord
  validates :content, presence: true
  
  belongs_to :song
  belongs_to :user
end
