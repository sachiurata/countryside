class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :user_profile, through: :users, source: 'user_profile', dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: 'user', dependent: :destroy
  
  has_many_attached :images
  
  validates :title, presence: true
  validates :prefecture, presence: true
  # validates :body1, presence: true
  # validates :body2, presence: true
  validates :public_status_id, presence: true
  
end
