class TagPostBusinessesController < ApplicationController
  def new
    @category_want = CategoryWant.new
    @category_earnest = CategoryEarnest.new
  end
  
  def index
    @category_want = CategoryWant.new
    @category_earnest = CategoryEarnest.new
    @category_wants = CategoryWant.all
    @category_earnest = CategoryEarnest.all
  end
end
