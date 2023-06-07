class UserProfile < ApplicationRecord
  
  belongs_to :user
  has_many :user_posts, through: :user, source: 'post'
 
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [400, 400], gravity: "center", crop: "200x200+0+0"
  end
  
  validates :screen_name, presence: true
  validates :prefecture, presence: true
  validates :public_status_id, presence: true
  
end
