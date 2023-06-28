class CategoryIssuesController < ApplicationController
  # def new
  #   @category_issue = CategoryIssue.new
  # end
  
  def create
    @category_issue = CategoryIssue.new(category_issue_params)
    if @category_issue.save
     redirect_to tag_post_regions_path, notice:"登録が完了しました"
    else
     render new_tag_post_region_path, notice:"登録が失敗しました"        
    end
  end
  
  # def index
  #   @category_issues = CategoryIssue.all
  # end
  
  def edit
    @category_issues = CategoryIssue.all
    @category_issue = CategoryIssue.find(params[:id])
  end
  
  def update
    @category_issue = CategoryIssue.find(params[:id])
    
    if @category_issue.update(category_issue_params)
     redirect_to tag_post_regions_path, notice:"更新しました"
    else
     render tag_post_regions_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_issue = CategoryIssue.find(params[:id])
    
    if @category_issue.destroy
     redirect_to tag_post_regions_path, notice:"削除しました"
    else
     render tag_post_regions_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_issue_params
     params.require(:category_issue).permit(:tag_name)  
   end
end
