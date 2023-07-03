class PostCategoryEarnest < ApplicationRecord
  belongs_to :post
  belongs_to :category_earnest
end
