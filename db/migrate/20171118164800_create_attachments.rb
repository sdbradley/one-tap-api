class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :attachment_id
      t.string :parent_id
      t.string :owner_id
      t.string :name
      t.string :content_type
      t.integer :body_length
      t.text :body
      t.text :description
      t.bigint :recording_downloaded_date
      t.string :recording_downloaded_by
      t.boolean :is_private
      t.boolean :is_deleted
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
