class PostsRegionController < ApplicationController
  
  before_action :authenticate_user!, except:[:index]
  before_action :user_profile_nil?
  
  def new
    @post = Post.new
    @category_resources = CategoryResource.all
    @category_issues = CategoryIssue.all
    @category_markets = CategoryMarket.all
    @category_features = CategoryFeature.all
    @category_realizabilities = CategoryRealizability.all
    @user_profile = current_user.user_profile
    @post_type_flag = 1
    @profile_type1_flag = true
  end
  
  def create
    @post = Post.new(post_params)
    @user_profile = current_user.user_profile
    
    category_resources_ids = params[:category_resource_id]
    category_issues_ids = params[:category_issue_id]
    category_markets_ids = params[:category_market_id]
    category_features_ids = params[:category_feature_id]
    category_realizabilities_ids = params[:category_realizability_id]
    # puts "ここ"
    # p category_resources_ids
    
    if @post.save
     if category_resources_ids.present?
      category_resources_ids.each do |category_resources_id|
        category_resources = @post.post_category_resources.build(category_resource_id: category_resources_id)
        puts "ここ"
        p category_resources
        category_resources.save
       end
     end
     
     if category_issues_ids.present?
      category_issues_ids.each do |category_issues_id|
        category_issues = @post.post_category_issues.build(category_issue_id: category_issues_id)
        category_issues.save
       end
     end
     
     if category_markets_ids.present?
      category_markets_ids.each do |category_markets_id|
        category_markets = @post.post_category_markets.build(category_market_id: category_markets_id)
        category_markets.save
      end  
     end
     
     if category_features_ids.present?
       category_features_ids.each do |category_features_id|
        category_features = @post.post_category_features.build(category_feature_id: category_features_id)
        category_features.save
       end   
     end
     
     if category_realizabilities_ids.present?
       category_realizabilities_ids.each do |category_realizabilities_id|
         category_realizabilities = @post.post_category_realizabilities.build(category_realizability_id: category_realizabilities_id)
         category_realizabilities.save
       end
     end
     
      redirect_to @post, action: "show", id: @post.id, notice:"登録が完了しました"
    else
      render "new", notice:"登録に失敗しました"  
      #空欄以外で登録失敗ってある？空欄だと画面が遷移しない。
    end
  end
  
  # def edit
  #   @post = Post.find(params[:id])
  #   @user_profile = current_user.user_profile
  #   @post_type_flag = 1
  #   # @profile_type1_flag = true
  #   @edit_flag = true
  # end
  
  # def update
  #   @post = Post.find(params[:id])
  #   @user_profile = current_user.user_profile
    
  #   if @post.update(post_params)
  #     redirect_to ({controller: :posts_region, action: :show, id: @post.id}), notice:"更新しました"
  #   else
  #     render :edit
  #   end
  # end
  
  # def show
  #   @post = Post.find(params[:id])
  #   @user_profile = UserProfile.find(@post.user.user_profile.id)
  #   @profile_type1_flag = true
  # end
  
  # def index
  #   @post = Post.all
  # end
  
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
  
  def user_profile_nil?
    if current_user.user_profile.nil?
     flash.now[:notice] = "先にプロフィール登録をお済ませください"
     render template: "user_profiles/new"
    end 
  end  
end
