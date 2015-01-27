class Music < ActiveRecord::Base
  validate :song_title, :singer, presence: true
  has_many :upvotes
  has_many :users, through: :upvotes 
  belongs_to :user
end


