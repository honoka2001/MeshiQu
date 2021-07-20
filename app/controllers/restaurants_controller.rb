class RestaurantsController < ApplicationController
  before_action :authenticate_restaurant!, except: [:show, :index]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
end
