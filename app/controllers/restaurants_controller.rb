class RestaurantsController < ApplicationController
  def index
  end

  def show
    @restaurant = Restaurant.find(restaurant_params[:id])
  end

  private
  def restaurant_params
    params.permit(:id)
  end
end
