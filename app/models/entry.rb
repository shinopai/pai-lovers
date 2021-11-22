class Entry < ApplicationRecord
  # validation 
  validates :user_id, uniqueness: { scope: :room_id }

  #relation
  belongs_to :user
  belongs_to :room
end
