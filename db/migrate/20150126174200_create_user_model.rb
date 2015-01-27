class CreateUserModel < ActiveRecord::Migration
  def up 
    create_table :users do |t|
      t.string :username 
      t.string :password
      t.string :email 
    end
  end
end