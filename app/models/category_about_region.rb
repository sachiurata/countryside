class CategoryAboutRegion < ApplicationRecord
  validates :tag_name, presence: true
  has_many :profile_category_about_regions, dependent: :destroy
end
