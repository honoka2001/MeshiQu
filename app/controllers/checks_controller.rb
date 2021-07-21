# frozen_string_literal: true

class ChecksController < ApplicationController
  def create
    @check = current_user.checks.create(coupon_id: params[:coupon_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @check = Check.find_by(coupon_id: params[:coupon_id], user_id: current_user.id)
    @check.destroy
    redirect_back(fallback_location: root_path)
  end
end
