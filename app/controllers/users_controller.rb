class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_water_tanks = @user.water_tanks
  end
end
