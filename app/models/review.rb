class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  AUTHORIZED_RATINGS = (1..5)

  validates :content, presence: true
  validates :review_rating, inclusion: { in: AUTHORIZED_RATINGS }
  validates :user_id, uniqueness: true
  validates :booking_id, uniqueness: true
end
