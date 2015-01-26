class CreateMusicModel < ActiveRecord::Migration 
  def up
    create_table :musics do |t|
      t.string :song_title
      t.string :singer
      t.string :url 
      t.datetime :created_at 
      t.datetime :updated_at 
    end 
  end
end

