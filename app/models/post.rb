class Post < ApplicationRecord
  validates :title, :summary, :body, presence: true
  validates :title, :summary, :body, length: { minimum: 3} 
end
