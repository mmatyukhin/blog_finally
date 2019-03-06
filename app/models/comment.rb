class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  scope :approved, -> { where(moderation: true) }
  validates :body, presence: true
end
