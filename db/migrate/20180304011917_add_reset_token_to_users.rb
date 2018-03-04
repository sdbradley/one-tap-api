class AddResetTokenToUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:users, :reset_token, :string) unless column_exists? :users, :reset_token
  end
  def self.down
    remove_column(:users, :reset_token) if column_exists? :users, :reset_token
  end
end
