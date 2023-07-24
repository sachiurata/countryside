class CategoryIncubationsController < ApplicationController
  def create
    @category_incubation = CategoryIncubation.new(category_incubation_params)
    
    if @category_incubation.save 
    redirect_to  tag_profile_regions_path, notice:"登録が完了しました"
    else
     render new_category_incubation_path, notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_incubations = CategoryIncubation.all
    @category_incubation = CategoryIncubation.find(params[:id])
  end
  
  def update
    @category_incubation = CategoryIncubation.find(params[:id])
    if @category_incubation.update(category_incubation_params)
     redirect_to tag_profile_regions_path, notice:"更新しました"
    else
     render tag_profile_regions_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_incubation = CategoryIncubation.find(params[:id])
    
    if @category_incubation.destroy
     redirect_to tag_profile_regions_path, notice:"削除しました"
    else
     render tag_profile_regions_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_incubation_params
     params.require(:category_incubation).permit(:tag_name)
   end
end
