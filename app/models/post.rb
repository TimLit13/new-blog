class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :taggings
  has_many :tags, through: :taggings
  
  validates :title, :summary, :body, :image, presence: true
  validates :title, :summary, :body, length: { minimum: 3} 
end
