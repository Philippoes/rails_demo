class Comment < ApplicationRecord
  validates :content, presence: true
  validates :email, presence: true
  validates :article, presence: true
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  belongs_to :article
end