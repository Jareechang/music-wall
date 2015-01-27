class Music < ActiveRecord::Base
  validate :song_title, :singer, presence: true
  belongs_to :user
end


