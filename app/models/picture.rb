class Picture < ApplicationRecord
  before_action :authenticate_user!
  mount_uploader :image, ImageUploader
end
