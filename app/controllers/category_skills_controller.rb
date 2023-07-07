class CategorySkillsController < ApplicationController
  def create
    @category_skill = CategorySkill.new(category_skill_params)
    
    if @category_skill.save 
    redirect_to  tag_profile_businesses_path, notice:"登録が完了しました"
    else
     render new_category_skill_path, notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_skills = CategorySkill.all
    @category_skill = CategorySkill.find(params[:id])
  end
  
  def update
    @category_skill = CategorySkill.find(params[:id])
    if @category_skill.update(category_skill_params)
     redirect_to tag_profile_businesses_path, notice:"更新しました"
    else
     render tag_profile_businesses_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_skill = CategorySkill.find(params[:id])
    
    if @category_skill.destroy
     redirect_to tag_profile_businesses_path, notice:"削除しました"
    else
     render tag_profile_businesses_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_skill_params
     params.require(:category_skill).permit(:tag_name)
   end
end
