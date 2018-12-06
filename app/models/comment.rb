class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  scope :approved, -> { where(moderation: true) }
  validates :body, presence: true, length: { minimum: 50, maximum: 250 }
  acts_as_tree order: 'created_at DESC'
end
