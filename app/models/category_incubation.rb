class CategoryIncubation < ApplicationRecord
  validates :tag_name, presence: true
  has_many :profile_category_incubation, dependent: :destroy
end
