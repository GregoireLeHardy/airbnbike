class BikesController < ApplicationController
  before_action :find_bike, only:[:create, :show, :edit, :destroy]

  def index
    @bikes = Bike.geocoded #returns flats with coordinates

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })
      }
    end
  end

  def show
  end

  def new
    @bike = Bike.new(params[:id])
  end

  def create
    @bike.save
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

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
