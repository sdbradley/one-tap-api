class AddNameToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column(:campaigns, :name, :string) unless column_exists?(:campaigns, :name)
  end
end
