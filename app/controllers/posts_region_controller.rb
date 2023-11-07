class PostsRegionController < ApplicationController
  before_action :authenticate_user!,         only:[:new]
  before_action :user_profile_nil?,          only:[:new]
  before_action :user_profile_status,        only:[:new]
  before_action :category_all
  before_action :check_flags_for_post_form,  only:[:new]
  before_action :check_flags_for_checkbox,   only:[:index]
  before_action :non_public_posts
  
  def index
    @post_type = params[:post_type]
    @prefecture = params[:prefecture]
    @keyword = params[:keyword]
    category_resource_ids = params[:category_resource_id]
    category_issue_ids = params[:category_issue_id]
    category_market_ids = params[:category_market_id]
    category_feature_ids = params[:category_feature_id]
    category_realizability_ids = params[:category_realizability_id]
    category_about_region_ids = params[:category_about_region_id]
    category_incubation_ids = params[:category_incubation_id]
    category_immigration_support_ids = params[:category_immigration_support_id]
    @search_type = params[:search_type]
    @category_resource_posts_all = []
    @category_issue_posts_all = []
    @category_market_posts_all = []
    @category_feature_posts_all = []
    @category_realizability_posts_all = []
    @category_about_region_profiles_all = []
    @category_incubation_profiles_all = []
    @category_immigration_support_profiles_all = []
    @posts_tag = []
    @profiles_tag = []
    @post_type_flag = 1
    
    # #プロフィールが「非公開(2)」となっているユーザーの投稿または「非公開(2)」の投稿
    # unpublic_user_profiles = UserProfile.where(public_status_region: 2)
    # @non_public_posts = Post.where(user_id: unpublic_user_profiles.pluck(:user_id)) + Post.where(public_status_id: 2)
   
    #「土の人投稿」のみ抽出
    @posts_post_type = Post.where(post_type: 1) - @non_public_posts
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
    
    #タグによる検索
    #「地域資源」でチェックされている項目を含む投稿
    if category_resource_ids.present?
      category_resource_ids.each do |category_resource_id|  
        @category_resource_posts = Post.joins(:post_category_resources).where(post_category_resources: {category_resource_id: category_resource_id})
        @category_resource_posts_all.concat(@category_resource_posts)
      end
      @category_resource_posts_ids = @category_resource_posts_all.pluck(:id).uniq
    end  
  
    #「地域課題」でチェックされている項目を含む投稿
    if category_issue_ids.present?
      category_issue_ids.each do |category_issue_id|  
        @category_issue_posts = Post.joins(:post_category_issues).where(post_category_issues: {category_issue_id: category_issue_id})
        @category_issue_posts_all.concat(@category_issue_posts)
      end
      @category_issue_posts_ids = @category_issue_posts_all.pluck(:id).uniq
    end 
    
    #「需要」でチェックされている項目を含む投稿
    if category_market_ids.present?
      category_market_ids.each do |category_market_id|  
        @category_market_posts = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
        @category_issue_posts_all.concat(@category_market_posts)
      end
      @category_market_posts_ids = @category_market_posts_all.pluck(:id).uniq
    end  
    
    #「地域の特色」でチェックされている項目を含む投稿
    if category_feature_ids.present?
      category_feature_ids.each do |category_feature_id|  
        @category_feature_posts = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
        @category_feature_posts_all.concat(@category_feature_posts)
      end
      @category_feature_posts_ids = @category_feature_posts_all.pluck(:id).uniq
    end
    
    #「実現可能性」でチェックされている項目を含む投稿
    if category_realizability_ids.present?
      category_realizability_ids.each do |category_realizability_id|  
        @category_realizability_posts = Post.joins(:post_category_realizabilities).where(post_category_realizabilities: {category_realizability_id: category_realizability_id})
        @category_realizability_posts_all.concat(@category_realizability_posts)
      end
      @category_realizability_posts_ids = @category_realizability_posts_all.pluck(:id).uniq
    end
    
    #「地域について」でチェックされている項目を含む投稿
    if category_about_region_ids.present?
      category_about_region_ids.each do |category_about_region_id|
        @category_about_region_profiles = UserProfile.joins(:profile_category_about_regions).where(profile_category_about_regions: {category_about_region_id: category_about_region_id})
        @category_about_region_profiles_all.concat(@category_about_region_profiles)
      end 
    end
    
    #「起業支援」でチェックさ���ている項目を含む投稿
    if category_incubation_ids.present?
      category_incubation_ids.each do |category_incubation_id|
        @category_incubation_profiles = UserProfile.joins(:profile_category_incubations).where(profile_category_incubations: {category_incubation_id: category_incubation_id})
        @category_incubation_profiles_all.concat(@category_incubation_profiles)
      end 
    end
    
    #「移住支援」でチェックされている項目を含む投稿
    if category_immigration_support_ids.present?
      category_immigration_support_ids.each do |category_immigration_support_id|
       @category_immigration_support_profiles = UserProfile.joins(:profile_category_immigration_supports).where(profile_category_immigration_supports: {category_immigration_support_id: category_immigration_support_id})
       @category_immigration_support_profiles_all.concat(@category_immigration_support_profiles)
      end 
    end
         
    #　タグ「地域資源」「地域課題」「需要」「地域の特色」「実現可能性」「地域について」「起業支援」「移住支援」の各項目についてOR検索  
    if @search_type == "1"   
      #　タグ「地域資源」「地域課題」「需要」「地域の特色」「実現可能性「地域について」「起業支援」「移住支援」」が一つも選択されていない
      if category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil? && category_realizability_ids.nil? && category_about_region_ids.nil? && category_incubation_ids.nil? && category_immigration_support_ids.nil?
        @posts = @posts_post_type_keyword_prefecture
      else
        #投稿のタグでの絞り込み
        @posts_tag.concat(@category_resource_posts_all, @category_issue_posts_all, @category_market_posts_all, @category_feature_posts_all, @category_realizability_posts_all)
       
        #プロフィールのタグでの絞り込み
        @profiles_tag.concat(@category_about_region_profiles_all, @category_incubation_profiles_all, @category_immigration_support_profiles_all)
        @profile_tag_ids = @profiles_tag.pluck(:id)
        @posts_user = User.where(id: @profile_tag_ids)
        @posts_profile_tag = Post.where(user_id: @posts_user)
        @posts_tag.concat(@posts_profile_tag)
       
        @posts = @posts_tag & @posts_post_type_keyword_prefecture
      end       
    
    #　タグ「地域資源」「地域課題」「需要」「地域の特色」「実現可能性」「地域について」「起業支援」「移住支援」の各項目についてAND検索  
    elsif @search_type == "2"
      #　タグ「地域資源」「地域課題」「需要」「地域の特色」「実現可能性「地域について」「起業支援」「移住支援」」が一つも選択されていない
      if category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil? && category_realizability_ids.nil? && category_about_region_ids.nil? && category_incubation_ids.nil? && category_immigration_support_ids.nil?
        @posts = @posts_post_type_keyword_prefecture
      else
        #「地域資源」のチェックボックスが一つでもチェックされた場合
        if category_resource_ids.present?
          @post_tag_ids = @category_resource_posts_ids
        end
        
        #「地域課題」のチェックボックスが一つでもチェックされた場合
        if category_issue_ids.present?
          if category_resource_ids.nil?
            @post_tag_ids = @category_issue_posts_ids
          else  
            @post_tag_ids = @post_tag_ids & @category_issue_posts_ids
          end
        end
        
        #「需要」のチェックボックスが一つでもチェックされた場合
        if category_market_ids.present?
          if category_resource_ids.nil? & category_issue_ids.nil?
            @post_tag_ids = @category_market_posts_ids
          else  
            @post_tag_ids = @post_tag_ids & @category_market_posts_ids
          end
        end    
        
        #「地域の特色」のチェックボックスが一つでもチェックされた場合
        if category_feature_ids.present?
          if category_resource_ids.nil? & category_issue_ids.nil? & category_market_ids.nil?
            @post_tag_ids = @category_feature_posts_ids
          else  
            @post_tag_ids = @post_tag_ids & @category_feature_posts_ids
          end
        end
        
        #「実現可能性」のチェックボックスが一つでもチェックされた場合
        if category_realizability_ids.present?
          if category_resource_ids.nil? & category_issue_ids.nil? & category_market_ids.nil? & category_feature_ids.nil?
            @post_tag_ids = @category_realizability_posts_ids
          else  
            @post_tag_ids = @post_tag_ids & @category_realizability_posts_ids
          end
        end
        
        #プロフィールでの絞り込み
        if category_about_region_ids.nil? && category_incubation_ids.nil? && category_immigration_support_ids.nil?
          @posts_tag_ids = @posts_tag_ids
        else
         
          #「地域について」のチェックボックスが一つでもチェックされた場合
          if category_about_region_ids.present?
            @profiles_tag = @category_about_region_profiles_all
          end
         
          #「起業支援」のチェックボックスが一つでもチェックされた場合
          if category_incubation_ids.present?
            if category_about_region_ids.nil?
              @profiles_tag = @category_incubation_profiles_all
            else
              @profiles_tag = @profiles_tag & @category_incubation_profiles_all
            end
          end
         
         #「移住支援」のチェックボックスが一つでもチェックされた場合
          if category_immigration_support_ids.present?
            if category_about_region_ids.nil? && category_incubation_ids.nil?
              @profiles_tag = @category_immigration_support_profiles_all
            else
              @profiles_tag = @profiles_tag & @category_immigration_support_profiles_all
            end
          end
         
          @profile_tag_ids = @profiles_tag.pluck(:id)
          @posts_user = User.where(id: @profile_tag_ids)
          @posts_profile_tag = Post.where(user_id: @posts_user)
          @post_profile_tag_ids = @posts_profile_tag.pluck(:id)
          if @post_tag_ids.nil?
            @post_tag_ids = @post_profile_tag_ids
          else
            @post_tag_ids = @post_tag_ids & @post_profile_tag_ids
          end
        end 
        
        @posts_tag = Post.where(id: @post_tag_ids)
        @posts = @posts_tag & @posts_post_type_keyword_prefecture
      end
       
    #検索条件をクリアした場合  
    else
      @posts = Post.where(post_type: 1).includes(:favorite_users) - @non_public_posts
    end
    
    #件数表示
    @posts_count = @posts.count
    
    #ページネーション
    @posts = Kaminari.paginate_array(@posts).page(params[:page]).per(10)
    
    # チェック済のボックスにチェックを入れて検索結果を表示するため。
    if category_resource_ids.present?
      @category_resources.each_with_index do |category_resource, index|
        if category_resource_ids.include?(category_resource.id.to_s)
          @check_flags_category_resources[index] = true
        else
          @check_flags_category_resources[index] = false
        end
      end
    end
   
    if category_issue_ids.present?
      @category_issues.each_with_index do |category_issue, index|
        if category_issue_ids.include?(category_issue.id.to_s)
          @check_flags_category_issues[index] = true
        else
          @check_flags_category_issues[index] = false
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
   
    if category_realizability_ids.present?
      @category_realizabilities.each_with_index do |category_realizability, index|
        if category_realizability_ids.include?(category_realizability.id.to_s)
          @check_flags_category_realizabilities[index] = true
        else
          @check_flags_category_realizabilities[index] = false
        end
      end
    end
   
    if category_about_region_ids.present?
      @category_about_regions.each_with_index do |category_about_region, index|
        if category_about_region_ids.include?(category_about_region.id.to_s)
          @check_flags_category_about_regions[index] = true
        else
          @check_flags_category_about_regions[index] = false
        end
      end
    end
   
    if category_incubation_ids.present?
      @category_incubations.each_with_index do |category_incubation, index|
        if category_incubation_ids.include?(category_incubation.id.to_s)
          @check_flags_category_incubations[index] = true
        else
          @check_flags_category_incubations[index] = false
        end
      end
    end
   
    if category_immigration_support_ids.present?
      @category_immigration_supports.each_with_index do |category_immigration_support, index|
        if category_immigration_support_ids.include?(category_immigration_support.id.to_s)
          @check_flags_category_immigration_supports[index] = true
        else
          @check_flags_category_immigration_supports[index] = false
        end
      end
    end
  end
  
  def new
    @post = Post.new
    @user_profile = current_user.user_profile
    @post_type_flag = 1
    @profile_type1_flag = true
  end
  
  private
  def post_params
    params.require(:post).permit(:user_id, :post_type, :title, :prefecture, :city, :body1, :body2, :feature, :attachment, :realizability, :earnest, :public_status_id, images: [])
  end

  def user_profile_status
    if current_user.user_profile.public_status_region.nil?  || current_user.user_profile.public_status_region == 2
      redirect_to edit_user_profiles_region_path(current_user.user_profile), danger: "地域情報を入力し、公開を選択してください"
    end
  end
end