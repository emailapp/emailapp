class RenameTypeColumn < ActiveRecord::Migration
  def self.up
    rename_column :events, :type, :subject
  end

  def self.down
    rename_column :events, :subject, :type
  end
end
