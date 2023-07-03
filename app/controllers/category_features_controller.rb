class CategoryFeaturesController < ApplicationController
  def create
    @category_feature = CategoryFeature.new(category_feature_params)
    
    if @category_feature.save
      redirect_to tag_post_regions_path, notice:"登録が完了しました"
    else
      render tag_post_regions_path, notice:"登録に失敗しました"
    end
  end
  
  def edit
    @category_features = CategoryFeature.all
    @category_feature = CategoryFeature.find(params[:id])
  end  
  
  def update
   @category_feature = CategoryFeature.find(params[:id])
   
    if @category_feature.update(category_feature_params)
      redirect_to tag_post_regions_path, notice:"更新しました"
    else
      render tag_post_regions_path, notice:"更新に失敗しました"
    end
  end
  
  def destroy
    @category_feature = CategoryFeature.find(params[:id])
    
    if @category_feature.destroy
      redirect_to tag_post_regions_path, notice:"削除しました"
    else
      render tag_post_regions_path, notice:"削除に失敗しました"
    end
  end
  
  private
  def category_feature_params
    params.require(:category_feature).permit(:tag_name)
  end
end
