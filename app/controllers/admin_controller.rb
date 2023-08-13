class AdminController < ApplicationController
  before_action :admin_signed_in
 
  def show
  end
  
  private
  def admin_signed_in
    if !admin_signed_in?
      redirect_to root_path
    end
  end
end
