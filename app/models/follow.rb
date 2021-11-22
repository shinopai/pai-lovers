class Follow < ApplicationRecord
  # validation 
  validates :followed_id, uniqueness: { scope: :follower_id }
end
