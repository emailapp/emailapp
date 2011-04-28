class AddUserIdColumn < ActiveRecord::Migration
  def self.up
    add_column :events, :user_id, :string
    add_column :contacts, :user_id, :string
  end

  def self.down
    remove_column :events, :user_id
    remove_column :contacts, :user_id    

  end
end
