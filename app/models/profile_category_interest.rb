class ProfileCategoryInterest < ApplicationRecord
  belongs_to :user_profile
  belongs_to :category_interest
end
