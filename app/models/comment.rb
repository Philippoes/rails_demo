class Comment < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true
  validates :article, presence: true

  belongs_to :article
end