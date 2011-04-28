class CreateSmtpInfos < ActiveRecord::Migration
  def self.up
    create_table :smtp_infos do |t|
      t.string :user_id
      t.string :user_name
      t.string :password
      t.string :host
      t.integer :port
      t.string :authentication
      t.boolean :starttls

      t.timestamps
    end
  end

  def self.down
    drop_table :smtp_infos
  end
end
