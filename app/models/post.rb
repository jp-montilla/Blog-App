class Post < ApplicationRecord
  belongs_to :admin
  has_many :comment, dependent: :destroy
  mount_uploader :picture, PictureUploader

  validates :title, :description, :picture, presence: true
end
