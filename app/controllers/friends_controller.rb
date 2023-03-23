class FriendsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save!
      redirect_to friends_path, notice: "Votre ami a été ajouté à l'application RYF ! !"
    else
      render :new, notice: "L'ajout de votre ami à RYF a échoué"
      # render :new, status: :unprocessable_entity
    end
  end

  def friend_params
    params.require(:friend).permit(:name, :date_of_birth, :price, :genre, :address, :photo, :description, :activity_barbecue, :activity_birthday,
      :activity_bowling, :activity_camping, :activity_concert, :activity_diner, :activity_hike, :activity_karaoke, :activity_movie,
      :activity_paintball, :activity_picnic, :activity_sam, :activity_shopping, :activity_sport, :activity_wedding, :default_arrogant,
      :default_cheap, :default_complotist, :default_disorganized, :default_impatient, :quality_brave, :quality_funny, :quality_good_looking,
      :quality_honest, :quality_reliable)
  end
end
