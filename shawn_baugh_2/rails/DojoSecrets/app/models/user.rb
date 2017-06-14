class User < ActiveRecord::Base
  has_secure_password
  validates :name, :email, :password, presence:true
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
end
