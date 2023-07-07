class TagProfileRegionsController < ApplicationController
 def new
   @category_about_region = CategoryAboutRegion.new
   @category_incubation = CategoryIncubation.new
   @category_immigration_support = CategoryImmigrationSupport.new
 end
 
 def index
   @category_about_region = CategoryAboutRegion.new
   @category_incubation = CategoryIncubation.new
   @category_immigration_support = CategoryImmigrationSupport.new
   @category_about_regions = CategoryAboutRegion.all
   @category_incubations = CategoryIncubation.all
   @category_immigration_supports = CategoryImmigrationSupport.all
 end
end
