class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :friend
  AUTHORIZED_STATUS = ["pending", "validated", "declined", "finished"]

  validates :status, inclusion: { in: AUTHORIZED_STATUS }
end
