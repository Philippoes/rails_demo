class Comment < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true
  validates :article, presence: true
  validates_format_of :author, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  belongs_to :article
end