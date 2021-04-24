class Experience < ApplicationRecord
  belongs_to :user
  
  validates :title, :description, :location, :duration, :price, presence: true
end
