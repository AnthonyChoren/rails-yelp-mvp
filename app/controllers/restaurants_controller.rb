class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
   @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
