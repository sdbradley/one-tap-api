class AddStakeholderIndexToCampaigns < ActiveRecord::Migration[5.0]
  def change
    add_index(:campaigns, :stakeholder__c, using: 'btree')
  end
end
