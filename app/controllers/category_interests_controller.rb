class CategoryInterestsController < ApplicationController
  def create
    @category_interest = CategoryInterest.new(category_interest_params)
    
    if @category_interest.save 
    redirect_to  tag_profile_businesses_path, notice:"登録が完了しました"
    else
     render new_category_interest_path, notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_interests = CategoryInterest.all
    @category_interest = CategoryInterest.find(params[:id])
  end
  
  def update
    @category_interest = CategoryInterest.find(params[:id])
    if @category_interest.update(category_interest_params)
     redirect_to tag_profile_businesses_path, notice:"更新しました"
    else
     render tag_profile_businesses_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_interest = CategoryInterest.find(params[:id])
    
    if @category_interest.destroy
     redirect_to tag_profile_businesses_path, notice:"削除しました"
    else
     render tag_profile_businesses_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_interest_params
     params.require(:category_interest).permit(:tag_name)
   end
end
