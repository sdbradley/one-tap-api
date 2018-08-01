class AddForcePasswordtoUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:users, :force_password_change, :boolean, null: false, default: false) unless column_exists? :users, :force_password_change
  end

  def self.down
    remove_column(:users, :force_password_change) if column_exists? :users, :force_password_change
  end
end
