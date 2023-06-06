class PostsController < ApplicationController
  def new_1
    @post = Post.new
    @user_profile = current_user.user_profile
    @profile_type1_flag = true
    @profile_type2_flag = false
  end
  
  def new_2
    @post = Post.new
    @user_profile = current_user.user_profile
    @profile_type1_flag = false
    @profile_type2_flag = true
  end
  
  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def post_params
   params.require(:post).permit(:user_id, :post_type, :title, :prefecture, :city, :body1, :body2, :feature, :main_image, :sub_image1, :sub_image2, :sub_image3, :sub_image4, :attachment, :realizability, :earnest, :public_status_id)
  end
  
end
