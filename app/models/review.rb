class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  AUTHORIZED_RATINGS = (0..5)

  validates :review_content, presence: true
  validates :review_rating, inclusion: { in: AUTHORIZED_RATINGS }
end
