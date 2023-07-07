class CategorySkill < ApplicationRecord
  validates :tag_name, presence: true
  has_many :profile_category_skills, dependent: :destroy
end
