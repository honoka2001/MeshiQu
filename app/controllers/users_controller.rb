class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: '更新に成功しました。'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :school, :grade, :department, :gender)
  end

end
