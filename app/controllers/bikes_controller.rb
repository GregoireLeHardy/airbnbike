class BikesController < ApplicationController
  before_action :find_bike, only:[:show, :edit, :destroy]

  def index
    @bikes = Bike.all
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
    @bike.update(params[:id])
  end

  def destroy
    @bike.destroy
  end

  private

  def bike_params_user
    bike_params.merge(user_id: current_user.id)
  end


  def bike_params
    params.require(:bike).permit(:name, :address)
  end

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
