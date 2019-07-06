class Comment < ApplicationRecord
  belongs_to :admin
  belongs_to :post

  validates :content, presence: true
end
