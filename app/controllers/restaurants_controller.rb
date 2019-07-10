class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.valid?
       @restaurant.save!
       redirect_to restaurant_path(@restaurant)
    else
      @restaurant = Restaurant.new(restaurant_params)
      render :new
    end
  end

  def update
      @restaurant = Restaurant.find(params[:id])
      if @restaurant.valid?
        @restaurant.save!
        redirect_to restaurant_path(@restaurant)
      else
        @restaurant = Restaurant.new(restaurant_params)
        render :edit
      end
    end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end

  def set_restaurant_id
    @restaurant = Restaurant.find(params[:id])
  end
end
