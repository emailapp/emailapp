class AddStatusColomnToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :status, :integer, :default => 0
  end

  def self.down
    remove_column :events, :status
  end
end
