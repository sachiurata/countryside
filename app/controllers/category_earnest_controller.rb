class CategoryEarnestController < ApplicationController
  def create
    @category_earnest = CategoryEarnest.new(category_earnest_params)
    
    if @category_earnest.save
       redirect_to tag_post_businesses_path, notice: "登録が完了しました"
    else
      render tag_post_businesses_path, notice: "登録に失敗しました"
    end
  end
  
  def edit
    @category_earnest = CategoryEarnest.find(params[:id])
    @category_earnests = CategoryEarnest.all
  end
  
  def update
    @category_earnest = CategoryEarnest.find(params[:id])
    
    if @category_earnest.update(category_earnest_params)
      redirect_to tag_post_businesses_path, notice: "更新しました"
    else
      render tag_post_businesses_path, notice: "更新に失敗しました"
    end
  end
  
  def destroy
    @category_earnest = CategoryEarnest.find(params[:id])
    
    if @category_earnest.destroy
      redirect_to tag_post_businesses_path, notice: "削除しました"
    else
      render tag_post_businesses_path, notice: "削除に失敗しました"
    end
  end
  
  private
  def category_earnest_params
    params.require(:category_earnest).permit(:tag_name)
  end
end
