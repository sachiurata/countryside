class CategoryResourcesController < ApplicationController
  def create
    @category_resource = CategoryResource.new(category_resource_params)
    if @category_resource.save
     redirect_to  tag_post_regions_path, notice:"登録が完了しました"
    else
     render new_category_resource_path, notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_resources = CategoryResource.all
    @category_resource = CategoryResource.find(params[:id])
  end
  
  def update
    @category_resource = CategoryResource.find(params[:id])
    if @category_resource.update(category_resource_params)
     redirect_to tag_post_regions_path, notice:"更新しました"
    else
     render tag_post_regions_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_resource = CategoryResource.find(params[:id])
    
    if @category_resource.destroy
     redirect_to tag_post_regions_path, notice:"削除しました"
    else
     render tag_post_regions_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_resource_params
     params.require(:category_resource).permit(:tag_name)
   end
end
