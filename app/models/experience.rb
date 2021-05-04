class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  
  validates :title, :description, :location, :duration, :price, presence: true
end
