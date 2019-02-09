class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def update
    set_restaurant
    @restaurant.update(params[:restaurant])
  end

  def show
    set_restaurant
  end

  def edit
    set_restaurant
  end

  def destroy
    set_restaurant
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :number, :category)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end
