class UserProfilesController < ApplicationController
  def new
    @user = UserProfile.new
  end
end
