class RestaurantsController < ApplicationController
  has_many :reviews, dependent: :destroy

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurants.save
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end
end
