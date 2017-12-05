class CreateUserRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_roles do |t|
      t.string :user_role_key
      t.string :user_id
      t.string :user_key
      t.string :role_id
      t.string :role_key
      t.boolean :is_deleted
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
