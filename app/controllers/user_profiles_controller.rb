class UserProfilesController < ApplicationController
  before_action :authenticate_user!, except:[:index]
  before_action :ensure_user, only:[:edit, :update]
  
  def new
    @user_profile = UserProfile.new
  end
  
  def create
    @user_profile = UserProfile.new(user_profile_params)
  
    if @user_profile.save
       redirect_to user_profiles_path, notice:"登録が完了しました"
    else
      render :new, notice:"登録に失敗しました"
    end
  end
  
  def edit
    @user_profile = UserProfile.find(params[:id])
  end
  
  def update
    #@user_profile.avatar.attach(params[:user_id][:avatar]) if @user_profile.avatar.blank?
    
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.update(user_profile_params)
      redirect_to user_profiles_path, notice:"更新しました"
    else
      render :edit
    end
  end
  
  def show
    @user_profile = UserProfile.find(params[:id])
    @posts = @user_profile.user.posts
    # @profile_type1_flag = true
    # @profile_type2_flag = true
  end
  
  def index
    @user_profiles = UserProfile.all
    @profile_type1_flag = true
    @profile_type2_flag = true
    # @profile_type1_flag = current_user.user_profile.profile_type1
    # @profile_type2_flag = current_user.user_profile.profile_type2
    
    # if @post.post_type == 1
    # @profile_type1_flag = true
    # end
    
    # if @post.post_type == 2
    # @profile_type2_flag = true
    # end
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :profile_type1, :profile_type2, :screen_name, :avatar, :prefecture, :city, :about_region, :incubation,:immigration_support,:job, :skill, :interest,:other1, :other2, :public_status_id)
  end
  
  def ensure_user
    @user_profile = UserProfile.find(params[:id])
    unless @user_profile.user_id == current_user.id
      redirect_to action: :show, id: @user_profile.id
    end
  end
end
