class NamesController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_user, only:[:edit, :update]
  
  def new
    @user_profile = UserProfile.new
  end
  
  def create
    @user_profile = UserProfile.new(user_profile_params)
    if @user_profile.save
      redirect_to user_profiles_profile_type_path
    else
      render "new", status: :unprocessable_entity, notice:"登録に失敗しました" 
    end
  end
  
  def edit
    @user_profile = UserProfile.find(params[:id])
  end
  
  def update
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.update(user_profile_params)
      redirect_to account_path
    else
      render "edit"
    end
    
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :screen_name, :avatar, :prefecture, :city)
  end
  
  def ensure_user
    @user_profile = UserProfile.find(params[:id])
    unless @user_profile.user_id == current_user.id
      redirect_to user_profile_path(current_user.id)
    end
  end
  
end
