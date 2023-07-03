class CategoryFeature < ApplicationRecord
  validates :tag_name, presence: true
  has_many :post_category_features 
end
