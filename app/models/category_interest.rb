class CategoryInterest < ApplicationRecord
  validates :tag_name, presence: true
  has_many :profile_category_interests, dependent: :destroy  
end
