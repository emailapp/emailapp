class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :schedule_time
      t.string :type
      t.text :message
      t.text :contacts

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
