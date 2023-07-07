class TagPostRegionsController < ApplicationController
  def new
    @category_resource = CategoryResource.new
    @category_issue = CategoryIssue.new
    @category_market = CategoryMarket.new
    @category_feature = CategoryFeature.new
    @category_realizability = CategoryRealizability.new
  end
  
  def index
    @category_resource = CategoryResource.new
    @category_issue = CategoryIssue.new
    @category_market = CategoryMarket.new
    @category_feature = CategoryFeature.new
    @category_realizability = CategoryRealizability.new
    @category_resources = CategoryResource.all
    @category_issues = CategoryIssue.all
    @category_markets = CategoryMarket.all
    @category_features = CategoryFeature.all
    @category_realizabilities = CategoryRealizability.all
  end
  
  private
   def category_resource_params
     params.require(:category_resource).permit(:tag_name)
   end
   def category_issue_params
     params.require(:category_issue).permit(:tag_name)  
   end
end
