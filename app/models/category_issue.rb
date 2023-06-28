class CategoryIssue < ApplicationRecord
  validates :tag_name, presence: true
end
