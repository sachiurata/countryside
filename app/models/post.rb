class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :user_profile, through: :users, source: 'user_profile', dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: 'user', dependent: :destroy
  has_many :post_category_resources, dependent: :destroy
  has_many :post_category_issues, dependent: :destroy
  has_many :post_category_markets, dependent: :destroy
  has_many :post_category_features, dependent: :destroy
  has_many :post_category_wants, dependent: :destroy
  has_many :post_category_realizabilities, dependent: :destroy
  has_many :post_category_earnest, dependent: :destroy
  has_many :profile_category_about_regions, dependent: :destroy
  has_many :profile_category_incubations, dependent: :destroy
  has_many :profile_category_immigration_supports, dependent: :destroy
  has_many :profile_category_jobs, dependent: :destroy
  has_many :profile_category_skills, dependent: :destroy
  has_many :profile_category_interests, dependent: :destroy
  
  has_many_attached :images
  
  validates :title, presence: true
  validates :prefecture, presence: true
  validates :public_status_id, presence: true
  
end
