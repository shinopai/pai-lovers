class Community < ApplicationRecord
  # validation
  validates :name,
            presence: true

  # relation
  belongs_to :category
  has_many :joins
  has_many :users, through: :joins

  # for carrierwave
  mount_uploader :community_image, CommunityImageUploader  
end
