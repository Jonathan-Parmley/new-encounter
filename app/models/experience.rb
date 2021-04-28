class Experience < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  
  validates :title, :description, :location, :duration, :price, presence: true
end
