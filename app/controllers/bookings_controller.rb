class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.find(params[:id])
    @rating = Rating.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
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
