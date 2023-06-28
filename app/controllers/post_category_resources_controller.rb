class PostCategoryResourcesController < ApplicationController
  def new
    @post_category_resource = PostCategoryResource.new
    @category_resources = CategoryResource.all
  end
  
  def create
    @post_category_resource = PostCategoryResource.new(post_category_resource_params)
    if @post_category_resource.save
      redirect_to @post, action: "index", notice:"登録しました"
    else 
      render @post, action: "index", notice:"登録に失敗しました"
    end
  end
  
  private
  def post_category_resource_params
    params.require(:post_category_resource).permit(:category_resource_id, :post_id)
  end
end
