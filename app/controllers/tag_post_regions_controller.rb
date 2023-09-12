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
end
