class UserProfile < ApplicationRecord
  
  belongs_to :user
  has_one_attached :avatar
  
  validates :profile_type, presence:true
  validates :screen_name, presence: true
  validates :prefecture, presence: true
  validates :public_status_id, presence: true
  
end