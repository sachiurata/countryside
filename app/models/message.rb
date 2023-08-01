class Message < ApplicationRecord
  default_scope -> { order(created_at: :asc) }
  validates :from_id, presence: true
  validates :to_id, presence: true
  validates :content, presence: true, length: { maximum: 300 }
  belongs_to :user, optional: true
  #belongs_to :user, foreign_key: "from_id"
end
