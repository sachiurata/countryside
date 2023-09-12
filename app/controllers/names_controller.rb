class NamesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_profile_present,   only:[:new]  
  
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
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :screen_name, :avatar, :prefecture, :city)
  end
  
  def user_profile_present
    if current_user.user_profile.present?
      redirect_to edit_name_path(current_user)
    end  
  end
end
