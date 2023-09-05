class ApplicationController < ActionController::Base
  before_action :non_public_posts
  
  protect_from_forgery with: :exception

  add_flash_types :success, :info, :warning, :danger
  
  include ApplicationHelper
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:last_sign_in_at])
  end
  
  def non_public_posts
    non_public_user_profiles_region = UserProfile.where(public_status_region: 2)
    @non_public_region_posts = Post.where(user_id: non_public_user_profiles_region.pluck(:user_id)) + Post.where(post_type: 1).where(public_status_id: 2)
    non_public_user_profiles_business = UserProfile.where(public_status_business: 2)
    @non_public_business_posts = Post.where(user_id: non_public_user_profiles_business.pluck(:user_id)) + Post.where(post_type: 2).where(public_status_id: 2)
    @non_public_posts = @non_public_region_posts + @non_public_business_posts
	  
  end
end
