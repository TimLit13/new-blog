class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, dependent: :destroy

  belongs_to :category
  
  validates :title, :summary, :body, :image, presence: true
  validates :title, :summary, :body, length: { minimum: 3} 

  def all_tags
    self.tags.map(&:name).join(', ')
  end

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

end
