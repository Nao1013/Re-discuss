class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @genders = @user.genders
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render edit
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:user_name, :introduct, :profile_image)
  end
  
end
