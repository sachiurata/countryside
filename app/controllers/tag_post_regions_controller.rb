class TagPostRegionsController < ApplicationController
  def new
    @category_resource = CategoryResource.new
    @category_issue = CategoryIssue.new
    @category_market = CategoryMarket.new
    @category_feature = CategoryFeature.new
    @category_realizability = CategoryRealizability.new
  end
  
#   def create
#     @category_issue = CategoryIssue.new(category_issue_params)
#     if @category_issue.save
#      redirect_to action: "index", notice:"登録が完了しました"
#     else
#      render action: "index", notice:"登録が失敗しました"        
#     end
    

#     @category_resource = CategoryResource.new(category_resource_params)
#     if @category_resource.save
#      redirect_to action: "index", notice:"登録が完了しました"
#     else
#      render action: "new", notice:"登録に失敗しました"
#     end    
#   end
  
  def index
    @category_resources = CategoryResource.all
    @category_issues = CategoryIssue.all
    @category_markets = CategoryMarket.all
    @category_features = CategoryFeature.all
    @category_realizabilities = CategoryRealizability.all
  end
  
#   def edit
#     @category_resources = CategoryResource.all
#     @category_resource = CategoryResource.find(params[:id])
#     @category_issues = CategoryIssue.all
#     @category_issue = CategoryIssue.find(params[:id])
#   end
  
#   def update
#     #puts "ここを見ろ"
#     #p params
#     @category_resource = CategoryResource.find(params[:id])
#     #p @category_resource
#     # puts params[:category_resource][:tag_name]
#     # @category_resource.tag_name = params[:category_resource][:tag_name]
#     #@category_resource = CategoryResource.find(category_resource_params)
    
#     if @category_resource.update(category_resource_params)
#      redirect_to action: "index", notice:"更新しました"
#     else
#      render action: "index", notice:"更新に失敗しました"
#     end  
#   end
  
#   def destroy
#     @category_resource = CategoryResource.find(params[:id])
    
#     if @category_resource.destroy
#      redirect_to action: "index", notice:"削除しました"
#     else
#      render action: "index", notice:"削除に失敗しました"
#     end  
#   end
  
  private
   def category_resource_params
     params.require(:category_resource).permit(:tag_name)
   end
   def category_issue_params
     params.require(:category_issue).permit(:tag_name)  
   end
end
