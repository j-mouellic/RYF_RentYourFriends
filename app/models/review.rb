class Review < ApplicationRecord
  belongs_to :booking
  has_many :user

  validates :user_id, uniqueness: true
  validates :booking_id, uniqueness: true
end
