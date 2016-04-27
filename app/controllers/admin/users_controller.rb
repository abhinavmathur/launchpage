class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)

  end

  private
  def user_params
    params.require(:users).permit(:email, :referral_code, :type)
  end
end
