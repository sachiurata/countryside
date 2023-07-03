class CategoryEarnest < ApplicationRecord
  validates :tag_name, presence: true
  has_many :post_category_earnests, dependent: :destroy
end
s