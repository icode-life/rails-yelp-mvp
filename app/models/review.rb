class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, presence: true, numericality: true
end
