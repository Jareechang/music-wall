class User < ActiveRecord::Base 
  validates :username, :password, :email, presence: true
  has_many :upvotes
  has_many :musics, through: :upvotes
  has_many :musics
end