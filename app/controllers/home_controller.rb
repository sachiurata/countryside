class HomeController < ApplicationController
  before_action :non_public_posts
  
  def index
    # popular_posts = Post.find(Favorite.group(:post_id).order('count(post_id) desc').pluck(:post_id))
    # @posts = popular_posts - @non_public_posts
    # @posts = @posts
    # @posts = @posts.first(3)
    @posts = Post.all - @non_public_posts
    @articles = Article.order("updated_at DESC").first(3)
  end
end
