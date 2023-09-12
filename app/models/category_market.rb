class CategoryMarket < ApplicationRecord
  validates :tag_name, presence: true
  has_many :post_category_markets, dependent: :destroy
end
