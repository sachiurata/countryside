class CategoryIssue < ApplicationRecord
  validates :tag_name, presence: true
  has_many :post_category_issues, dependent: :destroy
end
