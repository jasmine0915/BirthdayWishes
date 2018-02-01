class Message < ApplicationRecord
  belongs_to :wish
  mount_uploader :icon, ImagesUploader
end
