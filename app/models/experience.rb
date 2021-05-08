class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :reviews, dependent: :destroy
  validates :title, :description, :location, :duration, :price, presence: true

  geocoded_by :location
  # This is going to make the address be saved before geocoding
  before_validation :generate_and_save_location
  # This is going to make geocode run after validation
  # Check AR callbacks -> https://guides.rubyonrails.org/active_record_callbacks.html
  after_validation :geocode

  def generate_and_save_location
     self.location = "#{location}"
  end
  
  include PgSearch::Model
  pg_search_scope :search_by_title_location_and_category,
    against: [ :title, :location, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
