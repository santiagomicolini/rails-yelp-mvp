class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating,  presence: true
  validates :rating, inclusion: { in: (0..5).to_a, message: '%{value} is not a valid number, should be between 1 to 5' }
  validates :rating, numericality: { only_integer: true }
end

# A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
