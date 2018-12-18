class User < ApplicationRecord
  validates :nickname, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
             format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 6 }
  validates :gender, presence: true
  validates :age, presence: true
  has_many :posts
  has_many :likes, dependent: :destroy
  has_many :posts, through: :likes
  mount_uploader :image, ImageUploader
end
