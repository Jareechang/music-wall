class AddMusicUserRelation < ActiveRecord::Migration
  def change
    add_column :musics, :user_id, :integer, references: :users
  end
end