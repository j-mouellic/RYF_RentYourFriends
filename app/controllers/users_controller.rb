class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.where(user_id: current_user.id)
    @friends = @user.friends
  end
end
