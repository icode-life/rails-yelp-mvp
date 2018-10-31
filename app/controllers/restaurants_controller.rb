class RestaurantsController < ApplicationController
  before_action :find_resto, only: [:show]

  def index
    @restaurants = Restaurants.all
  end

  def show
  end

  def new
    @restaurant.new
  end

  def create
    @restaurant.new(restaurant_params)
    @restaurant.save
  end

  private

  def find_resto
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
