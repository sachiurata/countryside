class CategoryWant < ApplicationRecord
  validates :tag_name, presence: true
  has_many :post_category_wants, dependent: :destroy
end
