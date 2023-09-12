class UserProfilesController < ApplicationController
  before_action :authenticate_user!,            only:[:update]
  before_action :ensure_user_for_user_profile,  only:[:update]
  
  #現在ユーザー一覧ページを表示させるリンクは存在しないが、今後復活させる可能性があるため
  def index
    @user_profiles = UserProfile.all.page(params[:page]).per(10)
    @profile_type1_flag = true
    @profile_type2_flag = true
  end
  
  def show
    @user_profile = UserProfile.find(params[:id])
    @posts = @user_profile.user.posts
  end
  
  def update
    @user_profile = UserProfile.find(params[:id])
    
    if @user_profile.update(user_profile_params)
      
      @profile_category_about_regions = @user_profile.profile_category_about_regions
      @profile_category_about_regions.each do |profile_category_about_region|
        profile_category_about_region.destroy
      end
      category_about_region_ids = params[:category_about_region_id]
      if category_about_region_ids.present?
        category_about_region_ids.each do |category_about_region_id|
          profile_category_about_region = @user_profile.profile_category_about_regions.build(category_about_region_id: category_about_region_id)
          profile_category_about_region.save
        end
      end 
      
      @profile_category_incubations = @user_profile.profile_category_incubations
      @profile_category_incubations.each do |profile_category_incubation|
        profile_category_incubation.destroy
      end
      category_incubation_ids = params[:category_incubation_id]
      if category_incubation_ids.present?
        category_incubation_ids.each do |category_incubation_id|
          profile_category_incubation = @user_profile.profile_category_incubations.build(category_incubation_id: category_incubation_id)
          profile_category_incubation.save
        end
      end
      
      @profile_category_immigration_supports = @user_profile.profile_category_immigration_supports
      @profile_category_immigration_supports.each do |profile_category_immigration_support|
        profile_category_immigration_support.destroy
      end
      category_immigration_support_ids = params[:category_immigration_support_id]
      if category_immigration_support_ids.present?
        category_immigration_support_ids.each do |category_immigration_support_id|
          profile_category_immigration_support = @user_profile.profile_category_immigration_supports.build(category_immigration_support_id: category_immigration_support_id)
          profile_category_immigration_support.save
        end
      end   
      
      @profile_category_jobs = @user_profile.profile_category_jobs
      @profile_category_jobs.each do |profile_category_job|
        profile_category_job.destroy
      end
      category_job_ids = params[:category_job_id]
      if category_job_ids.present?
        category_job_ids.each do |category_job_id|
          profile_category_job = @user_profile.profile_category_jobs.build(category_job_id: category_job_id)
          profile_category_job.save
        end
      end
      
      @profile_category_skills = @user_profile.profile_category_skills
      @profile_category_skills.each do |profile_category_skill|
        profile_category_skill.destroy
      end
      category_skill_ids = params[:category_skill_id]
      if category_skill_ids.present?
        category_skill_ids.each do |category_skill_id|
          profile_category_skill = @user_profile.profile_category_skills.build(category_skill_id: category_skill_id)
          profile_category_skill.save
        end
      end
      
      @profile_category_interests = @user_profile.profile_category_interests
      @profile_category_interests.each do |profile_category_interest|
        profile_category_interest.destroy
      end
      category_interest_ids = params[:category_interest_id]
      if category_interest_ids.present?
        category_interest_ids.each do |category_interest_id|
          profile_category_interest = @user_profile.profile_category_interests.build(category_interest_id: category_interest_id)
          profile_category_interest.save
        end
      end
   
      redirect_to account_path(current_user.id), notice:"更新しました"
    else
      render "edit"
    end
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :profile_type1, :profile_type2, :screen_name, :avatar, :prefecture, :city, :about_region, :incubation, :immigration_support, :job, :skill, :interest,:other1, :other2, :public_status_region, :public_status_business)
  end
end
