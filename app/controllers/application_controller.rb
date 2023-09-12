class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  
  include ApplicationHelper
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:last_sign_in_at])
  end
  
  def ensure_user_for_user_profile
    @user_profile = UserProfile.find(params[:id])
    unless user_signed_in? && @user_profile.user_id == current_user.id
      redirect_to root_path
    end
  end
  
  def user_profile_nil?
    if current_user.user_profile.nil?
      redirect_to ({controller: 'names', action: 'new'}), notice: "先にプロフィール登録をお済ませください"
    end 
  end
  
  def non_public_posts
    non_public_user_profiles_region = UserProfile.where(public_status_region: 2)
    @non_public_region_posts = Post.where(user_id: non_public_user_profiles_region.pluck(:user_id)) + Post.where(post_type: 1).where(public_status_id: 2)
    non_public_user_profiles_business = UserProfile.where(public_status_business: 2)
    @non_public_business_posts = Post.where(user_id: non_public_user_profiles_business.pluck(:user_id)) + Post.where(post_type: 2).where(public_status_id: 2)
    @non_public_posts = @non_public_region_posts + @non_public_business_posts
  end
  
  def category_all
    @category_resources = CategoryResource.all
    @category_issues = CategoryIssue.all
    @category_markets = CategoryMarket.all
    @category_features = CategoryFeature.all
    @category_wants = CategoryWant.all
    @category_realizabilities = CategoryRealizability.all
    @category_earnests = CategoryEarnest.all
    @category_incubations = CategoryIncubation.all
    @category_immigration_supports = CategoryImmigrationSupport.all
    @category_about_regions = CategoryAboutRegion.all
    @category_incubations = CategoryIncubation.all
    @category_immigration_supports = CategoryImmigrationSupport.all
    @category_earnests = CategoryEarnest.all
    @category_wants = CategoryWant.all
    @category_jobs = CategoryJob.all
    @category_skills = CategorySkill.all
    @category_interests = CategoryInterest.all
  end
  
  def check_flags_for_post_form
    @check_flags_post_category_resource = []
    @check_flags_post_category_feature = []
    @check_flags_post_category_issue = []
    @check_flags_post_category_market = []
    @check_flags_post_category_want = []
    @check_flags_post_category_realizability = []
    @check_flags_post_category_earnest = []
  end
  
  def check_flags_for_checkbox
    @check_flags_category_resources = []
    @check_flags_category_issues = []
    @check_flags_category_markets = []
    @check_flags_category_features =[]
    @check_flags_category_realizabilities =[]
    @check_flags_category_about_regions =[]
    @check_flags_category_incubations =[]
    @check_flags_category_immigration_supports =[]
    @check_flags_category_wants = []
    @check_flags_category_earnests = []
    @check_flags_category_jobs = []
    @check_flags_category_skills = []
    @check_flags_category_interests = []
  end
end
