class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :role_key
      t.string :name
      t.string :description
      t.boolean :is_deleted
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
