class Article < ApplicationRecord
  has_rich_text :content
  has_one_attached :thumbnail
  
  validates :content, presence: true
  
  private
  def content_presence
    errors.add(:content, "can't be blank") if content.blank?
  end
end
