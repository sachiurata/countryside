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
    @category_resource = CategoryResource.new
    @category_issue = CategoryResource.new
    @category_market = CategoryMarket.new
    @category_feature = CategoryFeature.new
    prefecture = params[:prefecture]
    keyword = params[:keyword]
    category_resource_ids = params[:category_resource_id]
    category_issue_ids = params[:category_issue_id]
    category_market_ids = params[:category_market_id]
    category_feature_ids = params[:category_feature_id]
    search_type = params[:search_type]
    @posts = []
    @check_flags_category_resources = []
    
     #「地域資源」「地域課題」「需要」「地域の特色」の各項目についてOR検索
    if search_type == "1"
     
      if  prefecture == "" && keyword == "" && category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
        @posts = Post.all
        
      else
        if category_resource_ids.present?
          category_resource_ids.each do |category_resource_id|  
            @post_category_resources = Post.joins(:post_category_resources).where(post_category_resources: {category_resource_id: category_resource_id})
            @post_category_resources.each do |post_category_resource|
             @posts = @posts.append(post_category_resource)
            end
          end
          
          # 以下、チェック済のボックスにチェックを入れて検索結果を表示するため。
          # 他の項目は未実装。
          @category_resources.each_with_index do |category_resource, index|
            if category_resource_ids.include?(category_resource.id.to_s)
             @check_flags_category_resources[index] = true
            else
             @check_flags_category_resources[index] = false
            end
          end
          
        else
          @check_flags_category_resources = []
          @category_resources.each_with_index do |category_resource, index|
             @check_flags_category_resources[index] = false
          end
        end  
      
        if category_issue_ids.present?
          category_issue_ids.each do |category_issue_id|  
            @post_category_issues = Post.joins(:post_category_issues).where(post_category_issues: {category_issue_id: category_issue_id})
            @post_category_issues.each do |post_category_issue|
             @posts = @posts.append(post_category_issue)
            end
          end
        end 
        
        if category_market_ids.present?
          category_market_ids.each do |category_market_id|  
            @post_category_markets = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
            @post_category_markets.each do |post_category_market|
             @posts = @posts.append(post_category_market)
            end
          end
        end  
        
        if category_feature_ids.present?
          category_feature_ids.each do |category_feature_id|  
            @post_category_features = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
            @post_category_features.each do |post_category_feature|
             @posts = @posts.append(post_category_feature)
            end
          end 
        end 
        
        if prefecture.present?
          @post_prefecture = Post.where(prefecture: prefecture)
          if @posts.empty?
          @posts = @post_prefecture
          else
          @posts = @posts & @post_prefecture
          end  
        end 
        
        @post_ids = @posts.pluck(:id)
        @posts = Post.where(id: @post_ids)
        
        if keyword.present?
          keyword = '%' + keyword + '%'
          if prefecture.blank? && category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
            @posts = Post.where("title like ?", keyword).or(Post.where("body1 like ?", keyword))
          else
            @post_ids = @posts.pluck(:id)
            @posts = Post.where("body1 like ?", keyword).or(Post.where("body1 like ?", keyword)).where(id: @post_ids)
          end
        end 
      end
    
    #「地域資源」「地域課題」「需要」「地域の特色」の各項目についてAND検索  
    elsif search_type == "2"
      #全項目が入力もしくは選択されていない
      if  prefecture == "" && keyword == "" && category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
        @posts = Post.all
      else
        puts "いずれかの項目が一つでも入力もしくは選択されている"
        @post_ids = []
        #都道府県が選択された場合
        if prefecture.present?
          @prefecture_posts = Post.where(prefecture: prefecture)
          @prefecture_posts_ids = @prefecture_posts.pluck(:id)
          @post_ids = @prefecture_posts_ids
          puts "ここを見ろ"
          p @post_ids
        end 
        #「地域資源」のチェックボックスが一つでもチェックされた場合
        if category_resource_ids.present?
          @category_resource_posts_all = []
          category_resource_ids.each do |category_resource_id|  
            @category_resource_posts = Post.joins(:post_category_resources).where(post_category_resources: {category_resource_id: category_resource_id})
            @category_resource_posts.each do|category_resource_post|
             @category_resource_posts_all = @category_resource_posts_all.append(category_resource_post)
            end
             @category_resource_posts_ids = @category_resource_posts_all.pluck(:id).uniq
             
            # #都道府県が選択されなかった場合　
            # if @post_ids.empty? && category_resource_ids.nil?
            #   @post_ids = @category_resource_posts_ids
            # #都道府県の検索結果が存在する場合 または　選択したが該当結果がなかった場合
            # else 
            #   @post_ids = @post_ids & @category_resource_posts_ids
            # end   
             
              #都道府県の検索結果が存在する場合 または　選択したが該当結果がなかった場合
              if @post_ids.present? || prefecture.present? and @post_ids.empty?
                @post_ids = @post_ids & @category_resource_posts_ids
              #都道府県が選択されなかった場合  
              else
                @post_ids = @category_resource_posts_ids
              end
            
             puts "ここを見ろ"
             p @category_resource_posts_ids
             p @post_ids
          end
          
          # チェック済のボックスにチェックを入れて検索結果を表示するため。
          # 他の項目は未実装。
          @check_flags_category_resources = []
          @category_resources.each_with_index do |category_resource, index|
            #
            if category_resource_ids.include?(category_resource.id.to_s)
            @check_flags_category_resources[index] = true
            else
            @check_flags_category_resources[index] = false
            end
          end
        end
        
        #「地域課題」のチェックボックスが一つでもチェックされた場合
        if category_issue_ids.present?
          @category_issue_posts_all = []
          category_issue_ids.each do |category_issue_id|  
            @category_issue_posts = Post.joins(:post_category_issues).where(post_category_issues: {category_issue_id: category_issue_id})
            @category_issue_posts.each do|category_issue_post|
             @category_issue_posts_all = @category_issue_posts_all.append(category_issue_post)
            end
             @category_issue_posts_ids = @category_issue_posts_all.pluck(:id).uniq
            #「都道府県」「地域資源」を一つも選択しなかった場合
            if @post_ids.empty? || prefecture == "" && category_resource_ids.nil? 
              @post_ids = @category_issue_posts_ids
            #「都道府県」「地域資源」を選択したが該当する投稿がない場合　または「都道府県」「地域資源」を選択した場合
            else 
              @post_ids = @post_ids & @category_issue_posts_ids
            end
            # #「都道府県」と「地域資源」の両方の選択にマッチする検索結果が存在する場合 または　選択したが該当結果がなかった場合
            # if @post_ids.present? || prefecture.present? and category_resource_ids.present? and @post_ids.empty? 
            #     @post_ids = @post_ids & @category_resource_posts_ids
            # #「都道府県」と「地域資源」両方が選択されなかった場合  
            # else
            #     @post_ids = @category_resource_posts_ids
            # end
          end
        end
        
        #「需要」のチェックボックスが一つでもチェックされた場合
        if category_market_ids.present?
        @category_market_posts_all = []
          category_market_ids.each do |category_market_id|  
            @category_market_posts = Post.joins(:post_category_markets).where(post_category_markets: {category_market_id: category_market_id})
            @category_market_posts.each do|category_market_post|
             @category_market_posts_all = @category_market_posts_all.append(category_market_post)
            end
             @category_market_posts_ids = @category_market_posts_all.pluck(:id).uniq
            #「都道府県」「地域資源」「地域課題」を一つも選択しなかった場合
            if @post_ids.empty? || prefecture == "" && category_resource_ids.nil? && category_issue_ids.nil?
              @post_ids = @category_market_posts_ids
            #「都道府県」「地域資源」「地域課題」を選択したが該当する投稿がない場合　または「都道府県」「地域資源」「地域課題」を選択した場合
            else 
              @post_ids = @post_ids & @category_market_posts_ids
            end
          end
        end    
        
        #「地域の特色」のチェックボックスが一つでもチェックされた場合
        if category_feature_ids.present?
        @category_feature_posts_all = []
          category_feature_ids.each do |category_feature_id|  
            @category_feature_posts = Post.joins(:post_category_features).where(post_category_features: {category_feature_id: category_feature_id})
            @category_feature_posts.each do|category_feature_post|
             @category_feature_posts_all = @category_feature_posts_all.append(category_feature_post)
            end
             @category_feature_posts_ids = @category_feature_posts_all.pluck(:id).uniq
             #「都道府県」「地域資源」「地域課題」「需要」を一つも選択しなかった場合
            if @post_ids.empty? || prefecture == "" && category_resource_ids.nil? && category_issue_ids.nil? && category_feature_ids.nil?
              @post_ids = @category_feature_posts_ids
            #「都道府県」「地域資源」「地域課題」「需要」を選択したが該当する投稿がない場合　または「都道府県」「地域資源」「地域課題」「需要」を選択した場合
            else 
              @post_ids = @post_ids & @category_feature_posts_ids
            end
             
          end
        end 
        
        @posts = Post.where(id: @post_ids)
        
        #キーワードが入力された場合　
        if keyword.present?
         keyword = '%' + keyword + '%'
         #キーワード以外が選択されていない場合
         if category_resource_ids.nil? && category_issue_ids.nil? && category_market_ids.nil? && category_feature_ids.nil?
           @posts = Post.where("title like ?", keyword).or(Post.where("body1 like ?", keyword))
         #キーワード以外が選択されている場合   
         else
           @post_ids = @posts.pluck(:id)
           @posts = Post.where("title like ?", keyword).or(Post.where("body1 like ?", keyword)).where(id: @post_ids)
         end
        end 
      end  
    else
      @posts = Post.all
    end  
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
  end
end
