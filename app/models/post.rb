class Post < ApplicationRecord
  belongs_to :admin
  mount_uploader :picture, PictureUploader
end
