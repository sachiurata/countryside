class HomeController < ApplicationController
 def index
  @posts = Post.find(Favorite.group(:post_id).order('count(post_id) desc').pluck(:post_id)).first(3)
  @articles = Article.order("updated_at DESC").first(3)
 end
end
