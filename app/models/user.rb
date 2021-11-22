class User < ApplicationRecord
  # validation 
  validates :name,
            presence: true,
            length: { maximum: 30 }
            
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :age,
            presence: true
  validates :sex,
            presence: true
  
  # relation 
  has_one :profile_image, dependent: :destroy
  accepts_nested_attributes_for :profile_image
  has_many :entries
  has_many :rooms, through: :entries
  has_many :messages
  has_many :joins
  has_many :communities, through: :joins
end
