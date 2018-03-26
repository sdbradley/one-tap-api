class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :notification_key
      t.string :method
      t.string :notification_type
      t.string :data
      t.boolean :was_sent
      t.integer :sent_on
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
