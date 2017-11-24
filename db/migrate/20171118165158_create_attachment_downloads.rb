class CreateAttachmentDownloads < ActiveRecord::Migration[5.0]
  def change
    create_table :attachment_downloads do |t|
      t.string :attachment_download_key
      t.string :attachment_id
      t.string :user_key
      t.bigint :download_date
      t.boolean :is_deleted
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.string :updated_by

      t.timestamps
    end
  end
end
