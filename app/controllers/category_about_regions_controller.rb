class CategoryAboutRegionsController < ApplicationController
  def create
    @category_about_region = CategoryAboutRegion.new(category_about_region_params)
    
    if @category_about_region.save 
    redirect_to tag_profile_regions_path, notice:"登録が完了しました"
    else
     render "edit", notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_about_regions = CategoryAboutRegion.all
    @category_about_region = CategoryAboutRegion.find(params[:id])
  end
  
  def update
    @category_about_region = CategoryAboutRegion.find(params[:id])
    if @category_about_region.update(category_about_region_params)
     redirect_to tag_profile_regions_path, notice:"更新しました"
    else
     render tag_profile_regions_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_about_region = CategoryAboutRegion.find(params[:id])
    
    if @category_about_region.destroy
     redirect_to tag_profile_regions_path, notice:"削除しました"
    else
     render tag_profile_regions_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_about_region_params
     params.require(:category_about_region).permit(:tag_name)
   end
end
