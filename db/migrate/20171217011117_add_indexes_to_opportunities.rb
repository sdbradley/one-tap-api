class AddIndexesToOpportunities < ActiveRecord::Migration[5.0]
  def up
    add_index(:opportunities, :campaign_id) unless index_exists?(:opportunities, :campaign_id)
    add_index(:opportunities, :stage_name) unless index_exists?(:opportunities, :stage_name)
  end
  def down
    remove_index(:opportunities, :campaign_id) if index_exists?(:opportunities, :campaign_id)
    remove_index(:opportunities, :stage_name) if index_exists?(:opportunities, :stage_name)
  end
end
