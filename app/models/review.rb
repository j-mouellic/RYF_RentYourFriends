class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  AUTHORIZED_RATINGS = (0..5)

  validates :review_content, presence: true
  validates :review_rating, inclusion: { in: AUTHORIZED_RATINGS }
  validates :user_id, uniqueness: true
  validates :booking_id, uniqueness: true
end
