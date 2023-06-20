class PostsController < ApplicationController
  include PostsHelper
  
  before_action :authenticate_user!, except:[:index, :show]
  before_action :ensure_user, only:[:edit, :update]
  
  # def new_1
  #   @post = Post.new
  #   @user_profile = current_user.user_profile
  #   @post_type_flag = 1
  #   @profile_type1_flag = true
  #   @profile_type2_flag = false
  # end
  
  # def new_2
  #   @post = Post.new
  #   @user_profile = current_user.user_profile
  #   @post_type_flag = 2
  #   @profile_type1_flag = false
  #   @profile_type2_flag = true
  # end
  
  # def create
  #   @post = Post.new(post_params)
  #   @user_profile = current_user.user_profile
    
  #   if @post.save
  #     redirect_to ({action: :show, id: @post.id}), notice:"登録が完了しました"
  #   else
  #     render :root_path, notice:"登録に失敗しました"  
  #     #空欄以外で登録失敗ってある？空欄だと画面が遷移しない。
  #   end
  # end
  
  def edit
    @post = Post.find(params[:id])
    @user_profile = current_user.user_profile
    @edit_flag = true
    
    if @post.post_type == 1
      #@profile_type1_flag = true
      @post_type_flag = 1
    end
    
    if @post.post_type == 2
      #@profile_type2_flag = true
      @post_type_flag = 2
    end
  end
  
  def update
    
    @post = Post.find(params[:id])
    @user_profile = current_user.user_profile
    #@post.images.attach(params[:image_id])
    
  # if params[:post][:images]
  #     params[:post][:images].each do |image_id|
  #     puts "ここを見ろ"
  #     puts image_id
  #     #image = @user.images.find(image_id)
  #     @post.images.attach(params[:image])
  #   end
  #end  
    if params[:post][:image_ids]
      params[:post][:image_ids].each do |image_id|
        # if image_id != 0 || image_id.empty? == false
          image = @post.images.find(image_id)
          image.purge
        #end
      end
    end
    
    if @post.update(post_params)
     redirect_to @post, action: "show", id: @post.id, notice:"更新しました", status: :see_other
    else
      render :edit
    end
  end
  
  def show
    @post = Post.find(params[:id])
    @user_profile = UserProfile.find(@post.user.user_profile.id)
    @comment = Comment.new
    
    # if @post.post_type == 1
    # @profile_type1_flag = true
    # end
    
    # if @post.post_type == 2
    # @profile_type2_flag = true
    # end
    
  end
  
  def index
    @posts = Post.all
  end
  
  private
  def post_params
   params.require(:post).permit(:user_id, :post_type, :title, :prefecture, :city, :body1, :body2, :feature, :attachment, :realizability, :earnest, :public_status_id, images: [])
  end

  def ensure_user
    @post = Post.find(params[:id])
    unless @post.user_id == current_user.id
      redirect_to "show", id: @post.id
    end
  end  
end
