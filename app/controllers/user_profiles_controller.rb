class UserProfilesController < ApplicationController
  def new
    @user_profile = UserProfile.new
  end
  
  def create
    @user_profile = UserProfile.new(user_profile_params)
  
    if @user_profile.save
       redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :profile_type, :screen_name, :avatar_image, :prefecture, :city, :about_region, :incubation,:immigration_support,:job, :skill, :interest,:other, :public_status_id)
  end
end
