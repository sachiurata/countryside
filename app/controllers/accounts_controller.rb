class AccountsController < ApplicationController
  before_action :authenticate_user!
  #before_action :ensure_user
  
  def show
    @user_profile = current_user.user_profile
    @current_user_posts = current_user.posts
    ids = current_user.favorites.pluck(:post_id)
    @favorite_posts = Post.find(ids)
    @category_resources = CategoryResource.all
    if current_user.user_profile.profile_type1 = 1
     @avatar_flag = false
    end
    @mypage_flag = true
  end
  
  private
  def ensure_user
    unless params[:id] == current_user.id
      redirect_back fallback_location: @post, action: "index"
    end
  end
end
