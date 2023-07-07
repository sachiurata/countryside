class CategoryImmigrationSupportsController < ApplicationController
  def create
    @category_immigration_support = CategoryImmigrationSupport.new(category_immigration_support_params)
    
    if @category_immigration_support.save 
    redirect_to  tag_profile_regions_path, notice:"登録が完了しました"
    else
     render new_category_immigration_support_path, notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_immigration_supports = CategoryImmigrationSupport.all
    @category_immigration_support = CategoryImmigrationSupport.find(params[:id])
  end
  
  def update
    @category_immigration_support = CategoryImmigrationSupport.find(params[:id])
    if @category_immigration_support.update(category_immigration_support_params)
     redirect_to tag_profile_regions_path, notice:"更新しました"
    else
     render tag_profile_regions_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_immigration_support = CategoryImmigrationSupport.find(params[:id])
    
    if @category_immigration_support.destroy
     redirect_to tag_profile_regions_path, notice:"削除しました"
    else
     render tag_profile_regions_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_immigration_support_params
     params.require(:category_immigration_support).permit(:tag_name)
   end
end
