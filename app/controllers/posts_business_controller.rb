class PostsBusinessController < ApplicationController
  before_action :authenticate_user!, except:[:index]
  before_action :user_profile_nil?, except:[:index]
  before_action :user_profile_status, only:[:new, :create]
  
  def index
    @category_wants = CategoryWant.all
    @category_earnests = CategoryEarnest.all
    @category_jobs = CategoryJob.all
    @category_skills = CategorySkill.all
    @category_interests = CategoryInterest.all
    @post_type = params[:post_type]
    @prefecture = params[:prefecture]
    @keyword = params[:keyword]
    category_want_ids = params[:category_want_id]
    category_earnest_ids = params[:category_earnest_id]
    category_job_ids = params[:category_job_id]
    category_skill_ids = params[:category_skill_id]
    category_interest_ids = params[:category_interest_id]
    @search_type = params[:search_type]
    # @posts = []
    # @post_type_ids = []
    # @posts_post_type_ids = []
    # @posts_post_type_keyword = []
    # @posts_post_type_keyword_prefecture = []
    # @posts_post_type_keyword_prefecture_ids = []
    @category_want_posts = []
    @category_want_posts_all = []
    @category_earnest_posts = []
    @category_earnest_posts_all = []
    @category_job_profiles = []
    @category_job_profiles_all = []
    @category_skill_profiles = []
    @category_skill_profiles_all = []
    @category_interest_profiles = []
    @category_interest_profiles_all = []
    @posts_tag = []
    @post_tag_ids = []
    @profiles_tag = []
    @profile_tag_ids = []
    @post_profile_tag_ids = []
    @check_flags_category_wants = []
    @check_flags_category_earnests = []
    @check_flags_category_jobs = []
    @check_flags_category_skills = []
    @check_flags_category_interests = []
    
    #プロフィールが「非公開(2)」となっているユーザーの投稿または「非公開(2)」の投稿
    unpublic_user_profiles = UserProfile.where(public_status_business: 2)
    @unpublic_posts = Post.where(user_id: unpublic_user_profiles.pluck(:user_id)) + Post.where(public_status_id: 2)
    
    #「起業希望者投稿」のみ抽出
    @posts_post_type = Post.where(post_type: 2) - @unpublic_posts
    @posts_post_type_ids = @posts_post_type.pluck(:id)
    
    #キーワードが入力された場合　
    if @keyword.present?
      keyword = '%' + @keyword + '%'
      @posts_post_type_keyword = Post.where("title like ?", keyword).or(Post.where("body2 like ?", keyword)).where(id: @posts_post_type_ids)
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
    #「やりたいこと」でチェックされている項目を含む投稿
    if category_want_ids.present?
      category_want_ids.each do |category_want_id|  
        @category_want_posts = Post.joins(:post_category_wants).where(post_category_wants: {category_want_id: category_want_id})
        @category_want_posts_all.concat(@category_want_posts) 
      end
      @category_want_posts_ids = @category_want_posts_all.pluck(:id).uniq
    end  
  
    #「本気度」でチェックされている項目を含む投稿
    if category_earnest_ids.present?
      category_earnest_ids.each do |category_earnest_id|  
        @category_earnest_posts = Post.joins(:post_category_earnest).where(post_category_earnests: {category_earnest_id: category_earnest_id})
        @category_earnest_posts_all.concat(@category_earnest_posts)
      end
      @category_earnest_posts_ids = @category_earnest_posts_all.pluck(:id).uniq
    end 
    
    #「職業」でチェックされている項目を含むプロフィール
    if category_job_ids.present?
      category_job_ids.each do |category_job_id|
        @category_job_profiles = UserProfile.joins(:profile_category_jobs).where(profile_category_jobs: {category_job_id: category_job_id})
        @category_job_profiles_all.concat(@category_job_profiles)
      end
    end
   
    #「得意なこと」でチェックされている項目を含むプロフィール
    if category_skill_ids.present?
      category_skill_ids.each do |category_skill_id|
        @category_skill_profiles = UserProfile.joins(:profile_category_skills).where(profile_category_skills: {category_skill_id: category_skill_id})
        @category_skill_profiles_all.concat(@category_skill_profiles)
      end
    end
   
    #「興味のあること」でチェックされている項目を含むプロフィール
    if category_interest_ids.present?
      category_interest_ids.each do |category_interest_id|
        @category_interest_profiles = UserProfile.joins(:profile_category_interests).where(profile_category_interests: {category_interest_id: category_interest_id})
        @category_interest_profiles_all.concat(@category_interest_profiles)
      end
    end
         
    #　タグ「やりたいこと」「本気度」「職業」「得意なこと」「興味のあること」の各項目についてOR検索
    if @search_type == "1"   
      #　タグ「やりたいこと」「本気度」「職業」「得意なこと」「興味のあること」が一つも選択されていない場合
      if category_want_ids.nil? && category_earnest_ids.nil? && category_job_ids.nil? && category_skill_ids.nil? && category_interest_ids.nil?
        @posts = @posts_post_type_keyword_prefecture
      else
       
        #投稿のタグでの絞り込み
        @posts_tag.concat(@category_want_posts_all, @category_earnest_posts_all) 
       
        #プロフィールのタグでの絞り込み
        @profiles_tag.concat(@category_job_profiles_all, @category_skill_profiles_all, @category_interest_profiles_all)
        @profile_tag_ids = @profiles_tag.pluck(:id)
        @posts_user = User.where(id: @profile_tag_ids)
        @posts_profile_tag = Post.where(user_id: @posts_user)
        @posts_tag.concat(@posts_profile_tag)
        @posts = @posts_tag & @posts_post_type_keyword_prefecture
      end
       
    #　タグ「やりたいこと」「本気度」「職業」「得意なこと」「興味のあること」の各項目についてAND検索
    elsif @search_type == "2"
      #　タグ「やりたいこと」「本気度」「職業」「得意なこと」「興味のあること」が一つも選択されていない場合
      if category_want_ids.nil? && category_earnest_ids.nil? && category_job_ids.nil? && category_skill_ids.nil? && category_interest_ids.nil?
        @posts = @posts_post_type_keyword_prefecture
      else
        #「やりたいこと」のチェックボックスが一つでもチェックされた場合
        if category_want_ids.present?
          @post_tag_ids = @category_want_posts_ids
        end
        
        #「本気度」のチェックボックスが一つでもチェックされた場合
        if category_earnest_ids.present?
          if category_want_ids.nil?
            @post_tag_ids = @category_earnest_posts_ids
          else  
            @post_tag_ids = @post_tag_ids & @category_earnest_posts_ids
          end  
        end
        
        #プロフィールでの絞り込み
        if category_job_ids.nil? && category_skill_ids.nil? && category_interest_ids.nil?
          @posts_tag_ids = @posts_tag_ids
        else
         
          #「職業」のチェックボックスが一つでもチェックされた場合
          if category_job_ids.present?
            @profiles_tag = @category_job_profiles_all
          end
         
          #「得意なこと」のチェックボックスが一つでもチェックされた場合
          if category_skill_ids.present?
            if category_job_ids.nil?
              @profiles_tag = @category_skill_profiles_all
            else
              @profiles_tag = @profiles_tag & @category_skill_profiles_all
            end
          end
         
          #「興味のあること」のチェックボックスが一つでもチェックされた場合
          if category_interest_ids.present?
            if category_job_ids.nil? &&  category_skill_ids.nil?
              @profiles_tag = @category_interest_profiles_all
            else
              @profiles_tag = @profiles_tag & @category_interest_profiles_all
            end
          end  
         
          @profile_tag_ids = @profiles_tag.pluck(:id)
          @posts_user = User.where(id: @profile_tag_ids)
          @posts_profile_tag = Post.where(user_id: @posts_user)
          @post_profile_tag_ids = @posts_profile_tag.pluck(:id)
          if @post_tag_ids.empty?
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
      @posts = Post.where(post_type: 2) - @unpublic_posts
    end
    
    #件数表示
    @posts_count = @posts.count
    
    #ページネーション
    @posts = Kaminari.paginate_array(@posts).page(params[:page]).per(10)
          
    # チェック済のボックスにチェックを入れて検索結果を表示するため
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
   
    if category_job_ids.present?
      @category_jobs.each_with_index do |category_job, index|
        if category_job_ids.include?(category_job.id.to_s)
          @check_flags_category_jobs[index] = true
        else
          @check_flags_category_jobs[index] = false
        end
      end
    end
   
    if category_skill_ids.present?
      @category_skills.each_with_index do |category_skill, index|
        if category_skill_ids.include?(category_skill.id.to_s)
          @check_flags_category_skills[index] = true
        else
          @check_flags_category_skills[index] = false
        end
      end
    end
   
    if category_interest_ids.present?
      @category_interests.each_with_index do |category_interest, index|
        if category_interest_ids.include?(category_interest.id.to_s)
          @check_flags_category_interests[index] = true
        else
          @check_flags_category_interests[index] = false
        end
      end
    end
  end
  
  def new
    @post = Post.new
    @category_earnests = CategoryEarnest.all
    @category_wants = CategoryWant.all
    @user_profile = current_user.user_profile
    @post_type_flag = 2
    @profile_type2_flag = true
  end
  
  def create
    @post = Post.new(post_params)
    @user_profile = current_user.user_profile
    @category_earnests = CategoryEarnest.all
    @category_wants = CategoryWant.all
    @user_profile = current_user.user_profile
    @post_type_flag = 2
    @profile_type2_flag = true
    
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
      render "new", status: :unprocessable_entity, notice:"登録に失敗しました"  
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
      redirect_to ({controller: 'user_profiles', action: 'new'}), notice: "先にプロフィール登録をお済ませください"
    end 
  end  
  
  def user_profile_status
    if current_user.user_profile.public_status_business.nil?  || current_user.user_profile.public_status_business == 2
      redirect_to edit_user_profiles_business_path(current_user.user_profile), danger: "プロフィールを入力し、公開を選択してください"
    end
  end
end
