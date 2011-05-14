class ChangeDateType < ActiveRecord::Migration
  def self.up
    #change_column :events, :schedule_time, :date
    #change_column :contacts, :birthday, :date
    rename_column :events, :schedule_time, :schedule_time_string
    add_column :events, :schedule_time, :date
    
    rename_column :contacts, :birthday, :birthday_string
    add_column :contacts, :birthday, :date
    
    Event.reset_column_information
    Event.find_each { |c| c.update_attribute(:schedule_time, c.schedule_time_string) }
    remove_column :events, :schedule_time_string
    
   
    Contact.reset_column_information
    Contact.find_each { |e| e.update_attribute(:birthday, e.birthday_string) }
    remove_column :contacts, :birthday_string

    end
    
  #end
  #def self.down
  #  change_column :events, :schedule_time, :string
  #  change_column :contacts, :birthday, :string
  #end
  
end
