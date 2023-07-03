class PostCategoryMarket < ApplicationRecord
  belongs_to :post
  belongs_to :category_market
end
