class Article < ApplicationRecord
  acts_as_votable
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :category, optional: true
  has_many :comments
end
