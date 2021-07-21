# frozen_string_literal: true

class RestaurantsController < ApplicationController
  before_action :authenticate_restaurant!, except: %i[show index]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant), notice: '更新に成功しました。'
    else
      render :edit
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
