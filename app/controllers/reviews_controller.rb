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
    @review.user = current_user
    if @review.save
      redirect_to bookings_path, notice: "Votre avis a été pris en compte"
    else
      render :new, notice: "Impossible d'enregistrer votre avis"
    end
  end

  private

  def review_params
    params.require(:review).permit(:review_content, :review_rating)
  end
end
