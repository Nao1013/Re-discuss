class GendersController < ApplicationController
  
  def new
    @gender = Gender.new
  end
  
  def create
    @gender = Gender.new(gender_params)
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
  
  private
  
  def gender_params
    params.require(:gender).permit(:title, :body)
  end
end
