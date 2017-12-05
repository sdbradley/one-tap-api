class ChangePasswordToPasswordDigest < ActiveRecord::Migration[5.0]
  def self.up
    rename_column(:users, :password, :password_digest) if column_exists?(:users, :password)
  end
  def self.down
    rename_column(:users, :password_digest, :password) if column_exists?(:users, :password_digest)
  end
end
