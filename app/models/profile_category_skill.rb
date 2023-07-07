class ProfileCategorySkill < ApplicationRecord
  belongs_to :user_profile
  belongs_to :category_skill
end
