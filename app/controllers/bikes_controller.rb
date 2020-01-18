class BikesController < ApplicationController
  before_action :find_bike, only:[:show, :edit, :destroy]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
    create
  end

  def create
    @bike = Bike.new(params[:id])
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
