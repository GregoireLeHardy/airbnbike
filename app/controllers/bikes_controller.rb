class BikesController < ApplicationController
  before_action :find_bike, only:[:show, :edit, :update, :destroy, :book_bike]

  def index
    if params[:query].present?
      @bikes = Bike.where("address ILIKE ?", "%#{params[:query]}%")
      @bikes = Bike.geocoded
      @bikes = @bikes

      @markers = @bikes.map do |bike|
        {
          lat: bike.latitude,
          lng: bike.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })
        }
      end
    else
      @bikes = Bike.all
    end
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params_user)
    if @bike.save!
      redirect_to bikes_path
    else

    end
  end

  def edit
  end

  def update
    @bike.update(bike_params)
    redirect_to bikes_path
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  def book_bike
    redirect_to new_bike_booking_path
  end

  private

  def bike_params_user
    bike_params.merge(user_id: current_user.id)
  end

  def bike_params
    params.require(:bike).permit(:name, :address, :photo)
  end

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
