class PostsController < ApplicationController
  include PostsHelper
  
  before_action :authenticate_user!, except:[:index, :show]
  before_action :ensure_user, only:[:edit, :update]
  before_action :all, only:[:edit, :index]
  
  def edit
    @post = Post.find(params[:id])
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
      post_category_fpost_category_realizability.destroy
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
    @post_type = params[:post_type]
    @prefecture = params[:prefecture]
    @keyword = params[:keyword]
    # category_resource_ids = params[:category_resource_id]
    # category_issue_ids = params[:category_issue_id]
    # category_market_ids = params[:category_market_id]
    # category_feature_ids = params[:category_feature_id]
    # category_about_region_ids = params[:category_about_region_id]
    # category_incbubation_ids = params[:category_incbubation_id]
    # category_immigration_support_ids = params[:category_immigration_support_id]
    # category_job_ids = params[:category_job_id]
    # category_skill_ids = params[:category_skill_id]
    # category_interest_ids = params[:category_interest_id]
    # @search_type = params[:search_type]
    @posts = []
    @posts_post_type_prefecture = []
    @posts_post_type_prefecture_ids = []
    # @check_flags_category_resources = []
    # @check_flags_category_issues = []
    # @check_flags_category_markets = []
    # @check_flags_category_features =[]
    # @check_flags_category_incbubations =[]
    # @posts_post_type = []
    # @post_type_ids = []
    @posts_post_type_keyword = []
    @posts_post_type_ids = []
    @posts_post_type_keyword_prefecture = []
    @posts_post_type_keyword_prefecture_ids = []
    # @category_resource_posts_all = []
    # @category_issue_posts_all = []
    # @category_market_posts_all = []
    # @category_feature_posts_all = []
    # @category_incbubation_posts_all = []
    # @posts_tag = []
    # @post_tag_ids = []
    
    #「全ての投稿」が選択された場合
    # if @post_type == "0"
     @posts_post_type = Post.all
    # #「地域側投稿」または「起業希望者投稿」が選択された場合 
    # else  
    # @posts_post_type = Post.where(post_type: @post_type)
    # end
    @posts_post_type_ids = @posts_post_type.pluck(:id)
    
    #キーワードが入力された場合　
    if @keyword.present?
     keyword = '%' + @keyword + '%'
     @posts_post_type_keyword = Post.where("title like ?", keyword).or(Post.where("body1 like ?", keyword)).where(id: @posts_post_type_ids)
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
    
    # #「投稿タイプ」と「キーワード」と「都道府県」の条件を満たす投稿のid
    # @posts_post_type_keyword_prefecture_ids = @posts_post_type_keyword_prefecture.pluck(:id)
    # @posts = Post.where(id: @posts_post_type_keyword_prefecture_ids)
    # #「地域資源」「地域課題」「需要」「地域の特色」の各項目についてOR検索
    # if @search_type == "1"   
    #   #「キーワード」「地域資源」「地域課題」「需要」「地域の特色」が入力もしくは選択されていない場合
    #   if category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
    #     @posts = @posts_post_type_keyword_prefecture
    #   else
    #     #「地域資源」のチェックボックスが一つでもチェックされた場合
    #     if category_resource_ids.present?
    #       category_resource_ids.each do |category_resource_id|  
    #         @post_category_resources = Post.joins(:post_category_resources).where(post_category_resources: {category_resource_id: category_resource_id})
    #         @post_category_resources.each do |post_category_resource|
    #         @posts_tag = @posts_tag.append(post_category_resource)
    #         end
    #       end
    #     end  
      
    #     #「地域課題」のチェックボックスが一つでもチェックされた場合
    #     if category_issue_ids.present?
    #       category_issue_ids.each do |category_issue_id|  
    #         @post_category_issues = Post.joins(:post_category_issues).where(post_category_issues: {category_issue_id: category_issue_id})
    #         @post_category_issues.each do |post_category_issue|
    #           @posts_tag = @posts_tag.append(post_category_issue)
    #         end
    #       end
    #     end 
        
    #     #「需要」のチェックボックスが一つでもチェックされた場合
    #     if category_market_ids.present?
    #       category_market_ids.each do |category_market_id|  
    #         @post_category_markets = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
    #         @post_category_markets.each do |post_category_market|
    #         @posts_tag = @posts_tag.append(post_category_market)
    #         end
    #       end
    #     end  
        
    #     #「地域の特色」のチェックボックスが一つでもチェックされた場合
    #     if category_feature_ids.present?
    #       category_feature_ids.each do |category_feature_id|  
    #         @post_category_features = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
    #         @post_category_features.each do |post_category_feature|
    #         @posts_tag = @posts_tag.append(post_category_feature)
    #         end
    #       end
    #     end
        
    #     #「地域の特色」のチェックボックスが一つでもチェックされた場合
    #     if category_incbubation_ids.present?
    #       category_incbubation_ids.each do |category_incbubation_id|  
    #         @post_category_incbubations = Post.joins(:post_category_incbubations).where(post_category_incbubations: {category_incbubation_id: category_incbubation_id})
    #         @post_category_incbubations.each do |post_category_incbubation|
    #         @posts_tag = @posts_tag.append(post_category_incbubation)
    #         end
    #       end
    #     end
    #     @posts = @posts_tag & @posts_post_type_keyword_prefecture
    #   end
    
    # #「地域資源」「地域課題」「需要」「地域の特色」の各項目についてAND検索  
    # elsif @search_type == "2"
    #   #「キーワード」「地域資源」「地域課題」「需要」「地域の特色」が入力もしくは選択されていない
    #   if category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
    #     @posts = @posts_post_type_keyword_prefecture
    #   else
    #     #「地域資源」のチェックボックスが一つでもチェックされた場合
    #     if category_resource_ids.present?
    #       category_resource_ids.each do |category_resource_id|  
    #         @category_resource_posts = Post.joins(:post_category_resources).where(post_category_resources: {category_resource_id: category_resource_id})
    #         @category_resource_posts.each do|category_resource_post|
    #         @category_resource_posts_all = @category_resource_posts_all.append(category_resource_post)
    #         end
    #         @category_resource_posts_ids = @category_resource_posts_all.pluck(:id).uniq
    #         @post_tag_ids = @category_resource_posts_ids
    #       end
    #     end
        
    #     #「地域課題」のチェックボックスが一つでもチェックされた場合
    #     if category_issue_ids.present?
    #       category_issue_ids.each do |category_issue_id|  
    #         @category_issue_posts = Post.joins(:post_category_issues).where(post_category_issues: {category_issue_id: category_issue_id})
    #         @category_issue_posts.each do|category_issue_post|
    #         @category_issue_posts_all = @category_issue_posts_all.append(category_issue_post)
    #         end
    #         @category_issue_posts_ids = @category_issue_posts_all.pluck(:id).uniq
    #         if @post_tag_ids.empty?
    #           @post_tag_ids = @category_issue_posts_ids
    #         else  
    #           @post_tag_ids = @post_tag_ids & @category_issue_posts_ids
    #         end
    #       end
    #     end
        
    #     #「需要」のチェックボックスが一つでもチェックされた場合
    #     if category_market_ids.present?
    #       category_market_ids.each do |category_market_id|  
    #         @category_market_posts = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
    #         @category_market_posts.each do|category_market_post|
    #         @category_market_posts_all = @category_market_posts_all.append(category_market_post)
    #         end
    #         @category_market_posts_ids = @category_market_posts_all.pluck(:id).uniq
    #         if @post_tag_ids.empty?
    #           @post_tag_ids = @category_market_posts_ids
    #         else  
    #           @post_tag_ids = @post_tag_ids & @category_market_posts_ids
    #         end
    #       end
    #     end    
        
    #     #「地域の特色」のチェックボックスが一つでもチェックされた場合
    #     if category_feature_ids.present?
    #       category_feature_ids.each do |category_feature_id|  
    #         @category_feature_posts = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
    #         @category_feature_posts.each do|category_feature_post|
    #         @category_feature_posts_all = @category_feature_posts_all.append(category_feature_post)
    #         end
    #         @category_feature_posts_ids = @category_feature_posts_all.pluck(:id).uniq
    #         if @post_tag_ids.empty?
    #           @post_tag_ids = @category_feature_posts_ids
    #         else  
    #           @post_tag_ids = @post_tag_ids & @category_feature_posts_ids
    #         end
    #       end
    #     end 
        
    #     @post_ids = @posts_post_type_keyword_prefecture_ids & @post_tag_ids
    # #     @posts = Post.where(id: @post_ids)
    #   end
      
    #検索条件をクリアした場合  
    # else
    #   @posts = Post.all
    # end
    
# # チェック済のボックスにチェックを入れて検索結果を表示するため。
#   if category_resource_ids.present?
#     @category_resources.each_with_index do |category_resource, index|
#       if category_resource_ids.include?(category_resource.id.to_s)
#       @check_flags_category_resources[index] = true
#       else
#       @check_flags_category_resources[index] = false
#       end
#     end
#   end   
#     #「地域資源」のチェックボックスが一つも選択されなかった場合、チェックボックスにチェックをいれずに表示させるため
#     # これいらない? posts/indexの16行目の@check_flags_category_resourcesは空でもいいの？
#     # else
#     #   @check_flags_category_resources = []
#     #   @category_resources.each_with_index do |category_resource, index|
#     #     @check_flags_category_resources[index] = false
#     #   end
   
#   if category_issue_ids.present?
#     @category_issues.each_with_index do |category_issue, index|
#       if category_issue_ids.include?(category_issue.id.to_s)
#       @check_flags_category_issues[index] = true
#       else
#       @check_flags_category_issues[index] = false
#       end
#     end
#   end
   
#   if category_market_ids.present?
#     @category_markets.each_with_index do |category_market, index|
#       if category_market_ids.include?(category_market.id.to_s)
#       @check_flags_category_markets[index] = true
#       else
#       @check_flags_category_markets[index] = false
#       end
#     end
#   end
   
#   if category_feature_ids.present?
#     @category_features.each_with_index do |category_feature, index|
#       if category_feature_ids.include?(category_feature.id.to_s)
#       @check_flags_category_features[index] = true
#       else
#       @check_flags_category_features[index] = false
#       end
#     end
#   end
   
#   if category_incbubation_ids.present?
#     @category_incbubations.each_with_index do |category_incbubation, index|
#       if category_incbubation_ids.include?(category_incbubation.id.to_s)
#       @check_flags_category_incbubations[index] = true
#       else
#       @check_flags_category_incbubations[index] = false
#       end
#     end
#   end
   
  end
  
  def destroy
    @post_category_resource = PostCategoryResource.find(params[:id])
    
    if @post_category_resource.destroy
     redirect_to @post, action: "edit", id: @post_category_resource.post_id, notice:"タグを削除しました", status: :see_other
    else
      render :edit
    end
        
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
  
  def all
    @category_resources = CategoryResource.all
    @category_issues = CategoryIssue.all
    @category_markets = CategoryMarket.all
    @category_features = CategoryFeature.all
    @category_wants = CategoryWant.all
    @category_realizabilities = CategoryRealizability.all
    @category_earnests = CategoryEarnest.all
    
    @category_immigration_supports = CategoryImmigrationSupport.all
  end
end
