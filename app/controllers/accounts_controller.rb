class AccountsController < ApplicationController
  before_action :authenticate_user!
  #before_action :ensure_user
  
  def show
    @user_profile = current_user.user_profile
    @posts = current_user.posts
    @category_resources = CategoryResource.all
  end
  
  private
  def ensure_user
    unless params[:id] == current_user.id
      redirect_back fallback_location: @post, action: "index"
    end
  end
end
