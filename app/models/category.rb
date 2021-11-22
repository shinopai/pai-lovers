class Category < ApplicationRecord
  # relation 
  has_many :communities

  # for carrierwave
  mount_uploader :category_image, CategoryImageUploader  
end
