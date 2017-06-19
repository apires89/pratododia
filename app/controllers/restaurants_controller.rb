class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = current_user.restaurants.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Restaurant Created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update
      redirect_to restaurant_path(@restaurant), notice: "Restaurant Updated"
    else
      render :edit
    end
  end

  private

  def set_restaurant
    @restaurant = params[:id]
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :postcode, :country, :phone, :website, :email, :facebook, :capacity, :description)
  end
end
