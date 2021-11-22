class Message < ApplicationRecord
  #validation 
  validates :content,
            presence: true,
            length: { maximum: 200 }
  
  # relation 
  belongs_to :user
  belongs_to :room
end
