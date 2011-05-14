class ChangeDateType < ActiveRecord::Migration
  def self.up
    #change_column :events, :schedule_time, :date
    #change_column :contacts, :birthday, :date
    rename_column :events, :schedule_time, :schedule_time_string
    add_column :events, :schedule_time, :date
    
    Event.reset_collumn_information
    Event.find_each { |c| c.update_attribute(:schedule_time, c.schedule_time_string) }
    delete_column :events, :schedule_time_string

    end
    
  #end
  #def self.down
  #  change_column :events, :schedule_time, :string
  #  change_column :contacts, :birthday, :string
  #end
  
end
