class CategoryMarketsController < ApplicationController
  def create
   @category_market = CategoryMarket.new(category_market_params)
   
   if @category_market.save
     redirect_to tag_post_regions_path, notice:"登録が完了しました"
   else
     render tag_post_regions_path, notice:"登録に失敗しました"
   end
  end
  
  def edit
    @category_market = CategoryMarket.find(params[:id])
    @category_markets = CategoryMarket.all
  end
  
  def update
    @category_market = CategoryMarket.find(params[:id])
    
    if @category_market.update(category_market_params)
     redirect_to tag_post_regions_path, notice:"更新しました"
    else
     render tag_post_regions_path, notice:"更新しました"
    end
  end
  
  private 
  def category_market_params
    params.require(:category_market).permit(:tag_name)
  end 
end
