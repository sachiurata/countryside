class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
         
  has_one :user_profile
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :outgoing_messages, class_name: "Message",
                               foreign_key: "from_id",
                               dependent: :destroy
  has_many :incoming_messages, class_name: "Message",
                               foreign_key: "to_id",
                               dependent: :destroy
   
  # has_many :messages
  # has_many :dm_send_users, through: :messages, source: :to
  # has_many :reverses_of_messages, class_name: 'Message', foreign_key: 'to_id'
  # has_many :dm_receive_users, through: :reverses_of_messages, source: :from       
  has_many :messages
  has_many :dm_recieve_users, through: :messages, foreign_key: 'from_id', source: :to
end
