class CategoryRealizability < ApplicationRecord
  validates :tag_name, presence: true
  has_many :post_category_realizabilities, dependent: :destroy
end
