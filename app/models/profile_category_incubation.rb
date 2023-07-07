class ProfileCategoryIncubation < ApplicationRecord
  belongs_to :user_profile
  belongs_to :category_incubation
end
