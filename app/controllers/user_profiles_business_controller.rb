class UserProfilesBusinessController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  before_action :ensure_user, only:[:edit, :update]
  
  def edit
    @profile_business_flag = true
    @user_profile = UserProfile.find(params[:id])
    @category_jobs = CategoryJob.all
    @category_skills = CategorySkill.all
    @category_interests = CategoryInterest.all

    #ラジオボタンの「公開」「非公開」の選択
    if @user_profile.public_status_business == 1
      @public_status_business_flag = true
    end
    
    #「職業」のチェックボックスの選択
    @check_flags_profile_category_job = []
    @category_jobs.each_with_index do |category_job, index|
      pcj = ProfileCategoryJob.where(category_job_id: category_job.id).where(user_profile_id: @user_profile.id)
      if pcj.empty?
        @check_flags_profile_category_job[index] = false
      else
        @check_flags_profile_category_job[index] = true
      end
    end
    
    #「得意なこと」のチェックボックスの選択
    @check_flags_profile_category_skill = []
    @category_skills.each_with_index do |category_skill, index|
      pcs = ProfileCategorySkill.where(category_skill_id: category_skill.id).where(user_profile_id: @user_profile.id)
      if pcs.empty?
        @check_flags_profile_category_skill[index] = false
      else
        @check_flags_profile_category_skill[index] = true
      end
    end
    
    #「興味のあること」のチェックボックスの選択
    @check_flags_profile_category_interest = []
    @category_interests.each_with_index do |category_interest, index|
      pcin = ProfileCategoryInterest.where(category_interest_id: category_interest.id).where(user_profile_id: @user_profile.id)
      if pcin.empty?
        @check_flags_profile_category_interest[index] = false
      else
        @check_flags_profile_category_interest[index] = true
      end
    end 
  end
  
  private
  def user_profile_params
    params.require(:user_profile).permit(:user_id, :profile_type2, :job, :skill, :interest, :other2, :public_status_business)
  end
  
  def ensure_user
    @user_profile = UserProfile.find(params[:id])
    unless @user_profile.user_id == current_user.id
      redirect_to action: :show, id: @user_profile.id
    end
  end
end
