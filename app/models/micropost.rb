class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum:255 }
  
  has_many :favorited, class_name: 'Favorite'
  has_many :likers, through: :favorited, source: :user
end
