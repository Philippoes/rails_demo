class Comment < ApplicationRecord
  validates :content, presence: true
  validates :article, presence: true

  belongs_to :article
  belongs_to :user
end