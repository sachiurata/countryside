class CategoryWantsController < ApplicationController
  def create
    @category_want = CategoryWant.new(category_want_params)
    
    if @category_want.save
      redirect_to tag_post_businesses_path, notice: "登録が完了しました"
    else
      render tag_post_businesses_path, notice: "登録に失敗しました"
    end
  end
  
  def edit
    @category_wants = CategoryWant.all
    @category_want = CategoryWant.find(params[:id])
  end
  
  def update
    @category_want = CategoryWant.find(params[:id])
    
    if @category_want.update(category_want_params)
      redirect_to tag_post_businesses_path, notice: "更新しました"
    else
      render tag_post_businesses_path, notice: "更新に失敗しました"
    end
  end
  
  def destroy
    @category_want = CategoryWant.find(params[:id])
    
    if @category_want.destroy
      redirect_to tag_post_businesses_path, notice: "削除しました"
    else
      render tag_post_businesses_path, notice: "削除に失敗しました"
    end
  end
  
  private
  def category_want_params
    params.require(:category_want).permit(:tag_name)
  end
end
