class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.post_id = params[:post_id]
    
    if favorite.save
      redirect_back fallback_location: @post, action: "index", notice: "お気に入りに登録しました"
    else
      redirect_to posts_path, danger: 'お気に入り登録に失敗しました'
    end
  end
  
  def destroy
    Favorite.find_by(user_id: current_user.id, post_id: params[:id]).destroy
    redirect_back fallback_location: @post, action: "index", notice: "お気に入りを解除しました" 
  end
  
  private
   def favorite_params
     params.require(:favorite).permit(:user_id, :post_id)
   end
end
