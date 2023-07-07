class CategoryJobsController < ApplicationController
  def create
    @category_job = CategoryJob.new(category_job_params)
    
    if @category_job.save 
    redirect_to  tag_profile_businesses_path, notice:"登録が完了しました"
    else
     render new_category_job_path, notice:"登録に失敗しました"
    end    
  end
  
  def edit
    @category_jobs = CategoryJob.all
    @category_job = CategoryJob.find(params[:id])
  end
  
  def update
    @category_job = CategoryJob.find(params[:id])
    if @category_job.update(category_job_params)
     redirect_to tag_profile_businesses_path, notice:"更新しました"
    else
     render tag_profile_businesses_path, notice:"更新に失敗しました"
    end  
  end
  
  def destroy
    @category_job = CategoryJob.find(params[:id])
    
    if @category_job.destroy
     redirect_to tag_profile_businesses_path, notice:"削除しました"
    else
     render tag_profile_businesses_path, notice:"削除に失敗しました"
    end  
  end
  
  private
   def category_job_params
     params.require(:category_job).permit(:tag_name)
   end
end
