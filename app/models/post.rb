class Post < ApplicationRecord
  validates :objective, presence: true, length: { maximum: 50 }
  validates :place, presence: true, length: { maximum: 50 }
  validates :ideal, presence: true, length: { maximum: 140 }
  validates :image_a, presence: true
  validates :image_b, presence: true
  belongs_to :user
  mount_uploader :image_a, ImageUploader
  mount_uploader :image_b, ImageUploader
  has_many :likes, dependent: :destroy
  has_many :vote_users, through: :likes, source: :user
end
