class Friend < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
end
