class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  
  validates :title, :description, :location, :duration, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_location_and_category,
    against: [ :title, :location, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
