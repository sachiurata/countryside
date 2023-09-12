class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
         
  has_one  :user_profile
  has_many :posts,             dependent: :destroy
  has_many :favorites,         dependent: :destroy
  has_many :outgoing_messages, class_name: "Message",
                               foreign_key: "from_id",
                               dependent: :destroy
  has_many :incoming_messages, class_name: "Message",
                               foreign_key: "to_id",
                               dependent: :destroy
  has_many :messages,          dependent: :destroy 
  has_many :dm_recieve_users,  through: :messages, foreign_key: 'from_id', source: :to
end
