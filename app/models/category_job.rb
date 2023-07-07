class CategoryJob < ApplicationRecord
  validates :tag_name, presence: true
  has_many :profile_category_jobs, dependent: :destroy
end
