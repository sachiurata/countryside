class UserProfile < ApplicationRecord
  belongs_to :user
  has_many   :posts, through: :user,                  dependent: :destroy
  has_many   :profile_category_about_regions,         dependent: :destroy
  has_many   :profile_category_incubations,           dependent: :destroy
  has_many   :profile_category_immigration_supports,  dependent: :destroy
  has_many   :profile_category_jobs,                  dependent: :destroy
  has_many   :profile_category_skills,                dependent: :destroy
  has_many   :profile_category_interests,             dependent: :destroy
 
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb,   resize_to_limit: [400, 400], gravity: "center", crop: "400x400+0+0"
    attachable.variant :thumb_s, resize_to_fill: [50, 50],    gravity: "center", crop: "50x50+0+0"
  end
  
  validates :screen_name, presence: true
  #validates :prefecture, presence: true
  
end
