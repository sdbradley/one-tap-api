class AddContactIdToContact < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:contacts, :contact_id, :string) unless column_exists?(:contacts, :contact_id)
  end
  def self.down
    remove_column(:contacts, :contact_id) if column_exists?(:contacts, :contact_id)
  end
end
