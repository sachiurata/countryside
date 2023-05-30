class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @user_profile = UserProfile.new
  end
  
  def create
    @user_profile = UserProfile.new(user_profile_params)
  
    if @user_profile.save
       redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @user_profile = UserProfile.find(params[:id])
  end
  
  def update
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.update(user_profile_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :profile_type, :screen_name, :avatar, :prefecture, :city, :about_region, :incubation,:immigration_support,:job, :skill, :interest,:other1, :other2, :public_status_id)
  end
end
