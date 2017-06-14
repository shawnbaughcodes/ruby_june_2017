class Secret < ActiveRecord::Base
  belongs_to :user
  # has_many :users
  has_many :likes
  has_many :users_liked, through: :likes, source: :user
end
