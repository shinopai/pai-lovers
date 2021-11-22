class Room < ApplicationRecord
  #relation
  has_many :entries
  has_many :users, through: :entries
  accepts_nested_attributes_for :entries
  has_many :messages
end
