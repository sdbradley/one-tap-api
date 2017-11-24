class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :account_id
      t.datetime :activity_date
      t.text :description
      t.string :status
      t.string :subject
      t.string :what_id
      t.string :who_id
      t.boolean :is_closed
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.datetime :last_modified_date
      t.string :last_modified_by
      t.string :system_mod_stamp

      t.timestamps
    end
  end
end
