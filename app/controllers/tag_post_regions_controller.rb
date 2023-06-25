class TagPostRegionsController < ApplicationController
  def new
    @category_resouce = CategoryResource.new
  end
  
  def create
    @category_resource = CategoryResource.new(category_resource_params)
    
    if @category_resource.save
     redirect_to new_tag_post_region_path, notice:"登録が完了しました"
    else
     render new_tag_post_region_path, notice:"登録に失敗しました"
    end  
  end
  
  private
   def category_resource_params
     params.require(:category_resource).permit(:tag_name)
   end
end
