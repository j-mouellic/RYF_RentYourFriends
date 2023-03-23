class Friend < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
  has_one_attached :photo
  AUTHORIZED_GENRE = ["Homme", "Femme"]

  validates :name, presence: true
  validates :date_of_birth, presence: true
  validates :genre, presence: true, inclusion: { in: AUTHORIZED_GENRE }
  validates :address, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true
end
