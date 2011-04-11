class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :email
      t.string :first
      t.string :last
      t.string :birthday

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
