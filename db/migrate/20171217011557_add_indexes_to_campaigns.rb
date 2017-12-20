class AddIndexesToCampaigns < ActiveRecord::Migration[5.0]
  def up
    add_index(:campaigns, :campaign_id) unless index_exists?(:campaigns, :campaign_id)
    add_index(:campaigns, :parent_id) unless index_exists?(:campaigns, :parent_id)
    add_index(:campaigns, :partner__c) unless index_exists?(:campaigns, :partner__c)
  end
  def down
    remove_index(:campaigns, :campaign_id) if index_exists?(:campaigns, :campaign_id)
    remove_index(:campaigns, :parent_id) if index_exists?(:campaigns, :parent_id)
    remove_index(:campaigns, :partner__c) if index_exists?(:campaigns, :partner__c)
  end
end
