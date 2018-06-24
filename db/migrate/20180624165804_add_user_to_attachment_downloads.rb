class AddUserToAttachmentDownloads < ActiveRecord::Migration[5.0]
  def self.up
    add_reference(:attachment_downloads, :user) unless column_exists? :attachment_downloads, :user_id
  end
  def self.down
    remove_reference(:attachment_downloads, :user) if column_exists? :attachment_downloads, :user_id
  end
end
