class ChangeDateType < ActiveRecord::Migration
  def self.up
    change_column :events, :schedule_time, :date
    change_column :contacts, :birthday, :date
  end

  def self.down
    change_column :events, :schedule_time, :string
    change_column :contacts, :birthday, :string
  end
end
