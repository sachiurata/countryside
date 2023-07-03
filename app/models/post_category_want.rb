class PostCategoryWant < ApplicationRecord
  belongs_to :post
  belongs_to :category_wants
end
