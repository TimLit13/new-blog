class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, :summary, :body, :image, presence: true
  validates :title, :summary, :body, length: { minimum: 3} 
end
