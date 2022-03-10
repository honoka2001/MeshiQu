class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
    @check = Check.new
    @events = @coupon.events
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

  def edit
    @coupon = Coupon.find(params[:id])
  end

  def update
    @coupon = Coupon.find(params[:id])
    if @coupon.update(coupon_params)
      redirect_to coupon_path(@coupon), notice: '更新に成功しました。'
    else
      render :edit
    end
  end

  def destroy
    coupon = Coupon.find(params[:id])
    coupon.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def coupon_params
    params.require(:coupon).permit(:min_setting_count, :content, :exp_date)
  end

end
