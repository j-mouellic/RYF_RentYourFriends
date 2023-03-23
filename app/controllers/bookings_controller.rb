class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @requests = Booking.joins(friend: :user).where(users: { id: current_user.id }, friends: { user_id: current_user.id })
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.friend = Friend.find(params[:friend_id])
    @booking.status = "pending"
    if @booking.save
      redirect_to friend_path(@booking.friend), notice: "Votre réservation est en attente de confirmation !"
    else
      redirect_to friend_path(@booking.friend), notice: "Votre réservation a échouée"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      @booking.status = "pending"
      redirect_to bookings_path, notice: "Your booking was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def validated
    @booking = Booking.find(params[:id])
    @booking.status = "validated"
    redirect_to bookings_path, notice: "Votre demande de réservation a été acceptée !"
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :total_price)
  end
end
