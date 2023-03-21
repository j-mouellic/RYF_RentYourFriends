class ReviewsController < ApplicationController

  def new
    @friend = Friend.find(params[:friend_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review  = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path(@booking), notice: "Votre review a été prise en compte"
    else
      render bookings_path(@booking), notice: "Votre review a échoué"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
