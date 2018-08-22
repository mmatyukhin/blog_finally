class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  paginates_per 3
end
