class RelateMusicUserTableThroughUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes, id: false do |t| 
      t.belongs_to :music, index: true
      t.belongs_to :user, index: true
      t.integer :count 
    end
  end
end