class ChecksController < ApplicationController
	def create
		@check = current_user.checks.create(coupon_id: params[:coupon_id])
		redirect_back(fallback_location: root_path)
	end
end
