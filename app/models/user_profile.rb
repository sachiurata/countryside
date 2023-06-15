class UserProfile < ApplicationRecord
  
  belongs_to :user
  has_many :user_posts, through: :user, source: 'post'
 
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [400, 400], gravity: "center", crop: "400x400+0+0"
    attachable.variant :thumb_s, resize_to_fill: [50, 50], gravity: "center", crop: "50x50+0+0"
  end
  
  validates :screen_name, presence: true
  validates :prefecture, presence: true
  validates :public_status_id, presence: true
  
end
