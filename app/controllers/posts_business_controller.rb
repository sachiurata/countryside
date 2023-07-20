class PostsBusinessController < ApplicationController
  
  before_action :authenticate_user!, except:[:index]
  before_action :user_profile_nil?
  
   def new
    @post = Post.new
    @category_earnests = CategoryEarnest.all
    @category_wants = CategoryWant.all
    @user_profile = current_user.user_profile
    @post_type_flag = 2
    @profile_type2_flag = true
    # @profile_type2_flag = false
   end
  
  def create
    @post = Post.new(post_params)
    @user_profile = current_user.user_profile
    
    category_wants_ids = params[:category_want_id]
    category_earnest_ids = params[:category_earnest_id]
    
    if @post.save
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
     
      redirect_to @post, action: :show, id: @post.id, notice:"登録が完了しました"
    else
      render "new", notice:"登録に失敗しました"  
      #空欄以外で登録失敗ってある？空欄だと画面が遷移しない。
    end
  end
  
  def index
    @category_resources = CategoryResource.all
    @category_issues = CategoryIssue.all
    @category_markets = CategoryMarket.all
    @category_features = CategoryFeature.all
    @category_wants = CategoryWant.all
    @category_realizabilities = CategoryRealizability.all
    @category_earnests = CategoryEarnest.all
    @category_want = CategoryWant.new
    @category_earnest = CategoryResource.new
    @category_market = CategoryMarket.new
    @category_feature = CategoryFeature.new
    @post_type = params[:post_type]
    @prefecture = params[:prefecture]
    @keyword = params[:keyword]
    category_want_ids = params[:category_want_id]
    category_earnest_ids = params[:category_earnest_id]
    category_market_ids = params[:category_market_id]
    category_feature_ids = params[:category_feature_id]
    @search_type = params[:search_type]
    @posts = []
    @posts_post_type_prefecture = []
    @posts_post_type_prefecture_ids = []
    @check_flags_category_wants = []
    @check_flags_category_earnests = []
    @check_flags_category_markets = []
    @check_flags_category_features =[]
    @posts_post_type = []
    @post_type_ids = []
    @posts_post_type_keyword = []
    @posts_post_type_ids = []
    @posts_post_type_keyword_prefecture = []
    @posts_post_type_keyword_prefecture_ids = []
    @category_want_posts_all = []
    @category_earnest_posts_all = []
    @category_market_posts_all = []
     @category_feature_posts_all = []
    @posts_tag = []
    @post_tag_ids = []
    
    #「起業希望者投稿」のみ抽出
    @posts_post_type = Post.where(post_type: 2)
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
    
    #「投稿タイプ」と「キーワード」と「都道府県」の条件を満たす投稿のid
    @posts_post_type_keyword_prefecture_ids = @posts_post_type_keyword_prefecture.pluck(:id)
    
     #「地域資源」「地域課題」「需要」「地域の特色」の各項目についてOR検索
    if @search_type == "1"   
      #「キーワード」「地域資源」「地域課題」「需要」「地域の特色」が入力もしくは選択されていない場合
      if category_want_ids.nil? && category_earnest_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
        @posts = @posts_post_type_keyword_prefecture
      else
        #「地域資源」のチェックボックスが一つでもチェックされた場合
        if category_want_ids.present?
          category_want_ids.each do |category_want_id|  
            @post_category_wants = Post.joins(:post_category_wants).where(post_category_wants: {category_want_id: category_want_id})
            @post_category_wants.each do |post_category_want|
             @posts_tag = @posts_tag.append(post_category_want)
            end
          end
        end  
      
        #「地域課題」のチェックボックスが一つでもチェックされた場合
        if category_earnest_ids.present?
          category_earnest_ids.each do |category_earnest_id|  
            @post_category_earnests = Post.joins(:post_category_earnest).where(post_category_earnests: {category_earnest_id: category_earnest_id})
            @post_category_earnests.each do |post_category_earnest|
              @posts_tag = @posts_tag.append(post_category_earnest)
            end
          end
        end 
        
        #「需要」のチェックボックスが一つでもチェックされた場合
        if category_market_ids.present?
          category_market_ids.each do |category_market_id|  
            @post_category_markets = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
            @post_category_markets.each do |post_category_market|
             @posts_tag = @posts_tag.append(post_category_market)
            end
          end
        end  
        
        #「地域の特色」のチェックボックスが一つでもチェックされた場合
        if category_feature_ids.present?
          category_feature_ids.each do |category_feature_id|  
            @post_category_features = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
            @post_category_features.each do |post_category_feature|
             @posts_tag = @posts_tag.append(post_category_feature)
            end
          end
        end
        @posts = @posts_tag & @posts_post_type_keyword_prefecture
      end
    
    #「地域資源」「地域課題」「需要」「地域の特色」の各項目についてAND検索  
    elsif @search_type == "2"
      #「キーワード」「地域資源」「地域課題」「需要」「地域の特色」が入力もしくは選択されていない
      if category_want_ids.nil? && category_earnest_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
        @posts = @posts_post_type_keyword_prefecture
      else
        #「地域資源」のチェックボックスが一つでもチェックされた場合
        if category_want_ids.present?
          category_want_ids.each do |category_want_id|  
            @category_want_posts = Post.joins(:post_category_wants).where(post_category_wants: {category_want_id: category_want_id})
            @category_want_posts.each do|category_want_post|
             @category_want_posts_all = @category_want_posts_all.append(category_want_post)
            end
             @category_want_posts_ids = @category_want_posts_all.pluck(:id).uniq
             @post_tag_ids = @category_want_posts_ids
          end
        end
        
        #「地域課題」のチェックボックスが一つでもチェックされた場合
        if category_earnest_ids.present?
          category_earnest_ids.each do |category_earnest_id|  
            @category_earnest_posts = Post.joins(:post_category_earnest).where(post_category_earnests: {category_earnest_id: category_earnest_id})
            @category_earnest_posts.each do|category_earnest_post|
             @category_earnest_posts_all = @category_earnest_posts_all.append(category_earnest_post)
            end
             @category_earnest_posts_ids = @category_earnest_posts_all.pluck(:id).uniq
             if @post_tag_ids.empty?
              @post_tag_ids = @category_earnest_posts_ids
             else  
              @post_tag_ids = @post_tag_ids & @category_earnest_posts_ids
             end
          end
        end
        
        #「需要」のチェックボックスが一つでもチェックされた場合
        if category_market_ids.present?
          category_market_ids.each do |category_market_id|  
            @category_market_posts = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
            @category_market_posts.each do|category_market_post|
             @category_market_posts_all = @category_market_posts_all.append(category_market_post)
            end
             @category_market_posts_ids = @category_market_posts_all.pluck(:id).uniq
             if @post_tag_ids.empty?
              @post_tag_ids = @category_market_posts_ids
             else  
              @post_tag_ids = @post_tag_ids & @category_market_posts_ids
             end
          end
        end    
        
        #「地域の特色」のチェックボックスが一つでもチェックされた場合
        if category_feature_ids.present?
          category_feature_ids.each do |category_feature_id|  
            @category_feature_posts = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
            @category_feature_posts.each do|category_feature_post|
             @category_feature_posts_all = @category_feature_posts_all.append(category_feature_post)
            end
             @category_feature_posts_ids = @category_feature_posts_all.pluck(:id).uniq
             if @post_tag_ids.empty?
              @post_tag_ids = @category_feature_posts_ids
             else  
              @post_tag_ids = @post_tag_ids & @category_feature_posts_ids
             end
          end
        end 
        
        @post_ids = @posts_post_type_keyword_prefecture_ids & @post_tag_ids
        @posts = Post.where(id: @post_ids)
      end
      
    #検索条件をクリアした場合  
    else
      @posts = Post.where(post_type: 2)
    end
    
 # チェック済のボックスにチェックを入れて検索結果を表示するため。
   if category_want_ids.present?
    @category_wants.each_with_index do |category_want, index|
      if category_want_ids.include?(category_want.id.to_s)
       @check_flags_category_wants[index] = true
      else
       @check_flags_category_wants[index] = false
      end
    end
   end 
   if category_earnest_ids.present?
    @category_earnests.each_with_index do |category_earnest, index|
      if category_earnest_ids.include?(category_earnest.id.to_s)
       @check_flags_category_earnests[index] = true
      else
       @check_flags_category_earnests[index] = false
      end
    end
   end
   
   if category_market_ids.present?
    @category_markets.each_with_index do |category_market, index|
      if category_market_ids.include?(category_market.id.to_s)
       @check_flags_category_markets[index] = true
      else
       @check_flags_category_markets[index] = false
      end
    end
   end
   
   if category_feature_ids.present?
     @category_features.each_with_index do |category_feature, index|
      if category_feature_ids.include?(category_feature.id.to_s)
       @check_flags_category_features[index] = true
      else
       @check_flags_category_features[index] = false
      end
    end
   end
  end
  
  private
  def post_params
   params.require(:post).permit(:user_id, :post_type, :title, :prefecture, :city, :body1, :body2, :feature, :attachment, :realizability, :earnest, :public_status_id, images: [])
  end

  def ensure_user
    @post = Post.find(params[:id])
    unless @post.user_id == current_user.id
      redirect_to action: "show", id: @post.id
    end
  end
  
  def user_profile_nil?
    if current_user.user_profile.nil?
     flash.now[:notice] = "先にプロフィール登録をお済ませください"
     render template: "user_profiles/new"
    end 
  end  
end
