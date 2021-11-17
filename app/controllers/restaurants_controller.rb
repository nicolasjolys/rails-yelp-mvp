class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant.reviews << Review.new
    @review = @restaurant.reviews.last

    # sum = 0
    # @restaurant.reviews.each do |review|
    #   sum += review.rating
    # end
    # @average = (sum.to_f / @restaurant.reviews.count).to_f
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
