class Review < ApplicationRecord
  belongs_to :booking
  has_many :user



end
