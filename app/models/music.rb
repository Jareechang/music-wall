class Music < ActiveRecord::Base
  validate :song_title, :singer, presence: true
end