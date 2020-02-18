class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
  # 1. C[R]UD READ (ALL)
  def index
    @restaurants = Restaurant.all
  end

  # 1. C[R]UD READ (ONE)
  def show
  end

  # 2. [C]RUD  NEW record
  def new
    # ??? 
    @restaurant = Restaurant.new
  end
  # 2 [C]RUD CREATE the record coming from the NEW form
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save!
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # ??? 

    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end