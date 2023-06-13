class GendersController < ApplicationController
  
  def new
    @gender = Gender.new
  end
  
  def create
    @gender = Gender.new(gender_params)
    @gender.user_id = current_user.id
    @user = current_user
    if @gender.save
      redirect_to gender_path(@gender)
    else
      render :new
    end
  end
  
  def index
    @genders = Gender.all
  end

  def show
    @gender = Gender.find(params[:id])
    @user = @gender.user
  end
  
  def edit
    @gender = Gender.find(params[:id])
  end
  
  def update
    @gender = Gender.find(params[:id])
    if @gender.update(gender_params)
      redirect_to gender_path(@gender)
    else
      render :edit
    end
  end
  
  def destroy
    @gender = Gender.find(params[:id])
    @gender.destroy
    redirect_to genders_path
  end
  
  private
  
  def gender_params
    params.require(:gender).permit(:title, :body)
  end
end
