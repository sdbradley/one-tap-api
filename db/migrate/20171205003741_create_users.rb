class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_key
      t.string :user_name
      t.string :password
      t.string :session_id
      t.datetime :session_expires
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.string :account_id
      t.string :phone
      t.boolean :receive_texts
      t.datetime :last_login_date
      t.datetime :last_activity_date
      t.boolean :is_approved
      t.boolean :is_deleted
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
