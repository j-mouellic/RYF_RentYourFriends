class Friend < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :date_of_birth, presence: true
  validates :genre, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :picture, presence: true
  validates :price, presence: true
end
