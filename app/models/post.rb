class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one :user_profile, through: :user, source: 'user_profile'
  
  has_many_attached :images
  
  validates :title, presence: true
  validates :prefecture, presence: true
  # validates :body1, presence: true
  # validates :body2, presence: true
  validates :public_status_id, presence: true
  
end
