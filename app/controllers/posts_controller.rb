class PostsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  before_action :ensure_user, only:[:edit, :update]
  before_action :category_all
  before_action :check_flags_for_post_form, only:[:create, :edit, :update]
  before_action :non_public_posts
  
  def create
    @post = Post.new(post_params)
    @user_profile = current_user.user_profile
    category_resources_ids = params[:category_resource_id]
    category_issues_ids = params[:category_issue_id]
    category_markets_ids = params[:category_market_id]
    category_features_ids = params[:category_feature_id]
    category_realizabilities_ids = params[:category_realizability_id]
    category_wants_ids = params[:category_want_id]
    category_earnest_ids = params[:category_earnest_id]
    post_type = params[:post][:post_type]

    if @post.save
      if category_resources_ids.present?
        category_resources_ids.each do |category_resources_id|
          category_resources = @post.post_category_resources.build(category_resource_id: category_resources_id)
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
     
      if category_wants_ids.present?
        category_wants_ids.each do |category_wants_id|
          category_wants = @post.post_category_wants.build(category_want_id: category_wants_id)
          category_wants.save
        end
      end
      
      if category_earnest_ids.present?
        category_earnest_ids.each do |category_earnest_id|
          category_earnest = @post.post_category_earnest.build(category_earnest_id: category_earnest_id)
          category_earnest.save
        end
      end  
      
      redirect_to post_path(@post), notice:"登録が完了しました"
      
    else

      if post_type == "1"
        @post_type_flag = 1
        @profile_type1_flag = true
      elsif post_type == "2"
        @post_type_flag = 2
        @profile_type2_flag = true
      end  
      
      render "new", status: :unprocessable_entity, notice:"登録に失敗しました" 
      
    end
  end
  
  def edit
    @post = Post.find(params[:id])
    @user_profile = current_user.user_profile
    @edit_flag = true
    
    @category_resources.each_with_index do |category_resource, index|
      pcr = PostCategoryResource.where(category_resource_id: category_resource.id).where(post_id: @post.id)
      if pcr.empty?
        @check_flags_post_category_resource[index] = false        
      else
        @check_flags_post_category_resource[index] = true
      end  
    end
    
    @category_features.each_with_index do |category_feature, index|
      pcf = PostCategoryFeature.where(category_feature_id: category_feature.id).where(post_id: @post.id)
      if pcf.empty?
        @check_flags_post_category_feature[index] = false
      else
        @check_flags_post_category_feature[index] = true
      end
    end  
    
    @category_issues.each_with_index do |category_issue, index|
      pci = PostCategoryIssue.where(category_issue_id: category_issue.id).where(post_id: @post.id)
      if pci.empty?
       @check_flags_post_category_issue[index] = false
      else
       @check_flags_post_category_issue[index] = true
      end 
    end  

    @category_markets.each_with_index do |category_market, index|
      pcm = PostCategoryMarket.where(category_market_id: category_market.id).where(post_id: @post.id)
      if pcm.empty?
       @check_flags_post_category_market[index] = false
      else
       @check_flags_post_category_market[index] = true
      end
    end 
    
    @category_wants.each_with_index do |category_want, index|
      pcw = PostCategoryWant.where(category_want_id: category_want.id).where(post_id: @post.id)
      if pcw.empty?
        @check_flags_post_category_want[index] = false
      else
        @check_flags_post_category_want[index] = true
      end
    end  
    
    @category_realizabilities.each_with_index do |category_realizability, index|
      pcw = PostCategoryRealizability.where(category_realizability_id: category_realizability.id).where(post_id: @post.id)
      if pcw.empty?
        @check_flags_post_category_realizability[index] = false
      else
        @check_flags_post_category_realizability[index] = true
      end
    end
    
    @category_earnests.each_with_index do |category_earnest, index|
      pcw = PostCategoryEarnest.where(category_earnest_id: category_earnest.id).where(post_id: @post.id)
      if pcw.empty?
        @check_flags_post_category_earnest[index] = false
      else
        @check_flags_post_category_earnest[index] = true
      end
    end
    
    if @post.post_type == 1
      @profile_type1_flag = true
      @post_type_flag = 1
    end
    
    if @post.post_type == 2
      @profile_type2_flag = true
      @post_type_flag = 2
    end
  end
  
  def update
    @post = Post.find(params[:id])
    @user_profile = current_user.user_profile
    category_resources_ids = params[:category_resource_id]
    category_issues_ids = params[:category_issue_id]
    category_markets_ids = params[:category_market_id]
    category_features_ids = params[:category_feature_id]
    category_realizabilities_ids = params[:category_realizability_id]
    category_wants_ids = params[:category_want_id]
    category_earnest_ids = params[:category_earnest_id]
    
     @user_profile = current_user.user_profile
    @edit_flag = true
    
    @check_flags_post_category_resource = []
    #全カテゴリーサーチ
    @category_resources.each_with_index do |category_resource, index|
      pcr = PostCategoryResource.where(category_resource_id: category_resource.id).where(post_id: @post.id)
      if pcr.empty?
        @check_flags_post_category_resource[index] = false        
      else
        @check_flags_post_category_resource[index] = true
      end  
    end
    
    @check_flags_post_category_feature = []
    @category_features.each_with_index do |category_feature, index|
      pcf = PostCategoryFeature.where(category_feature_id: category_feature.id).where(post_id: @post.id)
      if pcf.empty?
        @check_flags_post_category_feature[index] = false
      else
        @check_flags_post_category_feature[index] = true
      end
    end  
    
    @check_flags_post_category_issue = []
    @category_issues.each_with_index do |category_issue, index|
      pci = PostCategoryIssue.where(category_issue_id: category_issue.id).where(post_id: @post.id)
      if pci.empty?
       @check_flags_post_category_issue[index] = false
      else
       @check_flags_post_category_issue[index] = true
      end 
    end  

    @check_flags_post_category_market = []
    @category_markets.each_with_index do |category_market, index|
      pcm = PostCategoryMarket.where(category_market_id: category_market.id).where(post_id: @post.id)
      if pcm.empty?
       @check_flags_post_category_market[index] = false
      else
       @check_flags_post_category_market[index] = true
      end
    end 
    
    @check_flags_post_category_want = []
    @category_wants.each_with_index do |category_want, index|
      pcw = PostCategoryWant.where(category_want_id: category_want.id).where(post_id: @post.id)
      if pcw.empty?
        @check_flags_post_category_want[index] = false
      else
        @check_flags_post_category_want[index] = true
      end
    end  
    
    @check_flags_post_category_realizability = []
    @category_realizabilities.each_with_index do |category_realizability, index|
      pcw = PostCategoryRealizability.where(category_realizability_id: category_realizability.id).where(post_id: @post.id)
      if pcw.empty?
        @check_flags_post_category_realizability[index] = false
      else
        @check_flags_post_category_realizability[index] = true
      end
    end
    
    @check_flags_post_category_earnest = []
    @category_earnests.each_with_index do |category_earnest, index|
      pcw = PostCategoryEarnest.where(category_earnest_id: category_earnest.id).where(post_id: @post.id)
      if pcw.empty?
        @check_flags_post_category_earnest[index] = false
      else
        @check_flags_post_category_earnest[index] = true
      end
    end
    
    if @post.post_type == 1
      #@profile_type1_flag = true
      @post_type_flag = 1
    end
    
    if @post.post_type == 2
      #@profile_type2_flag = true
      @post_type_flag = 2
    end
    
    if @post.update(post_params)
      @post_category_resources = @post.post_category_resources
      @post_category_resources.each do |post_category_resource|
        post_category_resource.destroy
      end
      if category_resources_ids.present?
        category_resources_ids.each do |category_resources_id|
          category_resource = @post.post_category_resources.build(category_resource_id: category_resources_id)
          category_resource.save
        end
      end
      
      @post_category_issues = @post.post_category_issues
      @post_category_issues.each do |post_category_issue|
        post_category_issue.destroy
      end  
      if category_issues_ids.present?
        category_issues_ids.each do |category_issues_id|
          category_issue = @post.post_category_issues.build(category_issue_id: category_issues_id)
          category_issue.save
        end
      end
     
     @post_category_markets = @post.post_category_markets
     @post_category_markets.each do |post_category_market|
       post_category_market.destroy
     end   
     if category_markets_ids.present?
      category_markets_ids.each do |category_markets_id|
        category_market = @post.post_category_markets.build(category_market_id: category_markets_id)
        category_market.save
      end  
     end
     
     @post_category_features = @post.post_category_features
     @post_category_features.each do |post_category_feature|
      post_category_feature.destroy
     end   
     if category_features_ids.present?
       category_features_ids.each do |category_features_id|
        category_feature = @post.post_category_features.build(category_feature_id: category_features_id)
        category_feature.save
       end   
     end
     
     @post_category_realizabilities = @post.post_category_realizabilities
     @post_category_realizabilities.each do |post_category_realizability|
      post_category_realizability.destroy
     end 
     if category_realizabilities_ids.present?
       category_realizabilities_ids.each do |category_realizabilities_id|
         category_realizability = @post.post_category_realizabilities.build(category_realizability_id: category_realizabilities_id)
         category_realizability.save
       end
     end
     
     @post_category_wants = @post.post_category_wants
     @post_category_wants.each do |post_category_want|
      post_category_want.destroy
     end 
     if category_wants_ids.present?
       category_wants_ids.each do |category_wants_id|
        category_wants = @post.post_category_wants.build(category_want_id: category_wants_id)
        category_wants.save
       end
     end
     
     @post_category_earnest = @post.post_category_earnest
     @post_category_earnest.each do |post_category_earnest|
      post_category_earnest.destroy
     end  
     if category_earnest_ids.present?
      category_earnest_ids.each do |category_earnest_id|
        category_earnest = @post.post_category_earnest.build(category_earnest_id: category_earnest_id)
        category_earnest.save
      end
     end  
     
      if params[:post][:image_ids]
        params[:post][:image_ids].each do |image_id|
          # if image_id != 0 || image_id.empty? == false
            image = @post.images.find(image_id)
            image.purge
          #end
        end
      end
    
     redirect_to post_path(@post), notice:"更新しました", status: :see_other
    else
      render "edit", status: :unprocessable_entity, notice:"登録に失敗しました"
    end
  end
  
  def show
    @post = Post.find(params[:id])
    @user_profile = UserProfile.find(@post.user.user_profile.id)
    @comment = Comment.new
  end
  
  def index
    @post_type = params[:post_type]
    @prefecture = params[:prefecture]
    @keyword = params[:keyword]
    @post_type_flag = 0
    
    # #プロフィールが「非公開(2)」となっているユーザーの投稿または「非公開(2)」の投稿
    # unpublic_user_profiles = UserProfile.where(public_status_region: 2).or(UserProfile.where(public_status_business: 2))
    # @non_public_posts = Post.where(user_id: unpublic_user_profiles.pluck(:user_id)) + Post.where(public_status_id: 2)
    
    #「全ての投稿」が選択された場合
    @posts_post_type = Post.all - @non_public_posts
    @posts_post_type_ids = @posts_post_type.pluck(:id)
    
    #キーワードが入力された場合　
    if @keyword.present?
     keyword = '%' + @keyword + '%'
     @posts_post_type_keyword = Post.where("title like ?", keyword).or(Post.where("body1 like ?", keyword)).or(Post.where("body2 like ?", keyword)).where(id: @posts_post_type_ids)
    else
     @posts_post_type_keyword = @posts_post_type
    end 
      
    #「都道府県」が選択された場合
    if @prefecture.present?
      @post_prefecture = Post.where(prefecture: @prefecture)
      @posts_post_type_keyword_prefecture = @posts_post_type_keyword & @post_prefecture 
    else
      @posts_post_type_keyword_prefecture = @posts_post_type_keyword
    end 
    
   
    @posts = @posts_post_type_keyword_prefecture
    
     #件数表示
    @posts_count = @posts.count
    
    #ページネーション
    @posts = Kaminari.paginate_array(@posts).page(params[:page]).per(10)
  end
  
  def destroy
    @post = Post.find(params[:id])
    
    if @post.destroy
     redirect_to account_path(@post.user), notice:"投稿を削除しました", status: :see_other
    else
      render "edit"
    end
        
  end
  
  private
  def post_params
   params.require(:post).permit(:user_id, :post_type, :title, :prefecture, :city, :body1, :body2, :feature, :attachment, :realizability, :earnest, :public_status_id, images: [])
  end

  def ensure_user
    @post = Post.find(params[:id])
    unless @post.user_id == current_user.id
      redirect_back fallback_location: root_path
    end
  end 
end
