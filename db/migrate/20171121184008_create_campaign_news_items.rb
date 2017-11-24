class CreateCampaignNewsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :campaign_news_items do |t|
      t.string :campaign_news_item_key
      t.string :campaign_id
      t.string :subject
      t.string :body
      t.boolean :is_deleted
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.string :updated_by

      t.timestamps
    end
  end
end
