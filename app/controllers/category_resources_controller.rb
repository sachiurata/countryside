# class CategoryResourcesController < ApplicationController
#   def new
#     @category_resouce = CategoryResource.new
#   end
  
#   def create
#     @category_resource = CategoryResource.new(category_resource_params)
    
#     if @category_resource.save
#     redirect_to admin_tag_post_regions_path, action: "show", notice:"登録が完了しました"
#     else
#     render admin_tag_post_regions_path, notice:"登録に失敗しました"
#     end  
#   end
  
#   def edit
    
#   end
  
#   def update
    
#   end
  
#   private
#   def category_resource_params
#     params.require(:category_resource).permit(:tag_name)
#   end
# end