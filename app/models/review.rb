class Review < ApplicationRecord
  belongs_to :experience
  validates :comment, length: { minimum: 1 }
end
