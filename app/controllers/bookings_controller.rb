class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user

    if @booking.save!
      redirect_to bike_booking_path(@bike, @booking)
    else
      render 'new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(start_date: params[:booking][:start_date], end_date: params[:booking][:end_date])
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :bike_id, :start_date, :end_date)
  end
end
