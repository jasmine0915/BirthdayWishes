class Wish < ApplicationRecord
  has_many :messages
  mount_uploader :image, ImagesUploader
end
