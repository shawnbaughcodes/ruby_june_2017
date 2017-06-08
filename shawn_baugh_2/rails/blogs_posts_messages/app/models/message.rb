class Message < ActiveRecord::Base
  belongs_to :post
  has_many :posts
  validates :author, :message, presence:true
  validates :message, length:{minimum:15}
end
