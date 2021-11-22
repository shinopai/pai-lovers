class ProfileImage < ApplicationRecord
  # relation 
  belongs_to :user

  # for carrierwave
  mount_uploader :profile_image, ProfileImageUploader
end
