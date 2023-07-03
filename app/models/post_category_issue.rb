class PostCategoryIssue < ApplicationRecord
  belongs_to :post
  belongs_to :category_issue
end
