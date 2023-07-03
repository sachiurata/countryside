class PostCategoryFeature < ApplicationRecord
  belongs_to :post
  belongs_to :category_feature
end
