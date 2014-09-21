class RestaurantsController < ApplicationController
  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def index
    @restaurants = Restaurant.all.order(name: :desc)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description, :category)
    end
end

