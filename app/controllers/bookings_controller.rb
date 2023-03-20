class BookingsController < ApplicationController
  def index
    @bookings = Booking.current_user.all
  end

  def new
    @booking = Booking.new
    @friend = Friend.find(params[:friend_id])
  end

  def create
    @booking = book
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :friend_id, :user_id)
  end
end
