class AddAdminUser < ActiveRecord::Migration[5.0]
  def self.up
    role = Role.find_or_create_by(name: "Admin")
    account = Account.find_or_create_by(id: "Account1", name: "Account1")
    user = User.create!(first_name: "Admin", last_name: "User", email_address: "admin_user@example.com", password: "Password", account: account)
    puts user.to_json if user.present?
    puts user unless user.present?
    UserRole.create!(user: user, role: role) if user.present?
  end
end
