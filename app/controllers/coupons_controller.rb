class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    @coupon.restaurant_id = current_restaurant.id
    if @coupon.save
      redirect_to restaurant_path(current_restaurant), notice: '投稿に成功しました。'
    else
      render :new
    end
  end

  private
  def coupon_params
    params.require(:coupon).permit(:min_setting_count, :content, :exp_date)
  end

end
