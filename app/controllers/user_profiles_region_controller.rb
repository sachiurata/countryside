class UserProfilesRegionController < ApplicationController
  before_action :ensure_user
  
  def edit
    @profile_region_flag = true
    @user_profile = UserProfile.find(params[:id])
    @category_about_regions = CategoryAboutRegion.all
    @category_incubations = CategoryIncubation.all
    @category_immigration_supports = CategoryImmigrationSupport.all
    
    #ラジオボタンの「公開」「非公開」の選択
    if @user_profile.public_status_region == 1
      @public_status_region_flag = true
    end
    
    #「地域について」のチェックボックスの選択
    @check_flags_profile_category_about_region = []
    @category_about_regions.each_with_index do |category_about_region, index|
      pca = ProfileCategoryAboutRegion.where(category_about_region_id: category_about_region.id).where(user_profile_id: @user_profile.id)
      if pca.empty?
        @check_flags_profile_category_about_region[index] = false
      else
        @check_flags_profile_category_about_region[index] = true
      end
    end
    
    #「地域の起業支援」のチェックボックスの選択
    @check_flags_profile_category_incubation = []
    @category_incubations.each_with_index do |category_incubation, index|
      pci = ProfileCategoryIncubation.where(category_incubation_id: category_incubation.id).where(user_profile_id: @user_profile.id)
      if pci.empty?
        @check_flags_profile_category_incubation[index] = false
      else
        @check_flags_profile_category_incubation[index] = true
      end
    end
    
    #「地域の移住支援」のチェックボックスの選択
    @check_flags_profile_category_immigration_support = []
    @category_immigration_supports.each_with_index do |category_immigration_support, index|
      pcis = ProfileCategoryImmigrationSupport.where(category_immigration_support_id: category_immigration_support.id).where(user_profile_id: @user_profile.id)
      if pcis.empty?
        @check_flags_profile_category_immigration_support[index] = false
      else
        @check_flags_profile_category_immigration_support[index] = true
      end
    end
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :profile_type1, :about_region, :incubation, :immigration_support, :other1, :public_status_region)
  end
  
  def ensure_user
    @user_profile = UserProfile.find(params[:id])
    unless @user_profile.user_id == current_user.id
      redirect_to action: :show, id: @user_profile.id
    end
  end
end
