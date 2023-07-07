class TagProfileBusinessesController < ApplicationController
  def new
    @category_job = CategoryJob.new
    @category_skill = CategorySkill.new
    @category_interest = CategoryInterest.new
  end
  
  def index
    @category_job = CategoryJob.new
    @category_skill = CategorySkill.new
    @category_interest = CategoryInterest.new
    @category_jobs = CategoryJob.all
    @category_skills = CategorySkill.all
    @category_interests = CategoryInterest.all
  end
end
