class ProfileCategoryJob < ApplicationRecord
  belongs_to :user_profile
  belongs_to :category_job
end
