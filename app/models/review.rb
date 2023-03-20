class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :user_id, uniqueness: true
  validates :booking_id, uniqueness: true
end
