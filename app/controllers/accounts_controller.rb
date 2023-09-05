class AccountsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user_profile = current_user.user_profile
    @current_user_posts = current_user.posts
    ids = current_user.favorites.pluck(:post_id)
    @favorite_posts = Post.find(ids)
    
    #_post_card.html.erbで「公開」「非公開」を表示するため
    @current_user_flag = true
  end
  
end
