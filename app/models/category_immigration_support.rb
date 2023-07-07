class CategoryImmigrationSupport < ApplicationRecord
  validates :tag_name, presence: true
  has_many :profile_category_immigration_supports, dependent: :destroy
end
