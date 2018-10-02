class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  scope :approved, -> {where(moderation: true)}
end
