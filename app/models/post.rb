class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  validates :title, presence: true
  validates :content, presence: true
  validates :picture, presence: true
end
