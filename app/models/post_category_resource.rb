class PostCategoryResource < ApplicationRecord
  belongs_to :post
  belongs_to :category_resource
end
