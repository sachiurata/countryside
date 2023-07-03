class CategoryRealizabilitiesController < ApplicationController
  def create
   @category_realizability = CategoryRealizability.new(category_realizability_params)
   
   if @category_realizability.save
     redirect_to tag_post_regions_path, notice:"登録が完了しました"
   else
     render tag_post_regions_path, notice:"登録に失敗しました"
   end
  end
  
  def edit
    @category_realizability = CategoryRealizability.find(params[:id])
    @category_realizabilities = CategoryRealizability.all
  end
  
  def update
    @category_realizability = CategoryRealizability.find(params[:id])
    
    if @category_realizability.update(category_realizability_params)
     redirect_to tag_post_regions_path, notice:"更新しました"
    else
     render tag_post_regions_path, notice:"更新しました"
    end
  end
  
  def destroy
    @category_realizability = CategoryRealizability.find(params[:id])
    
    if @category_realizability.destroy
     redirect_to tag_post_regions_path, notice:"削除しました"
    else
     render tag_post_regions_path, notice:"削除に失敗しました"
    end  
  end
  private 
  def category_realizability_params
    params.require(:category_realizability).permit(:tag_name)
  end 
end
