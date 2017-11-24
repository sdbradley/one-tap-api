class CreateOpportunities < ActiveRecord::Migration[5.0]
  def change
    create_table :opportunities do |t|
      t.string :account_id
      t.string :campaign_id
      t.string :name
      t.string :description
      t.string :stage_name
      t.decimal :amount
      t.decimal :probability
      t.datetime :close_date
      t.string :opportunity_type
      t.string :next_step
      t.string :lead_source
      t.string :forecast_category
      t.string :forecast_category_name
      t.boolean :has_opportunity_line_item
      t.string :pricebook_2_id
      t.string :fiscal_quarter
      t.string :fiscal_year
      t.datetime :meeting_date_time__c
      t.string :registered_deal_num__c
      t.string :cover_sheet_text__c
      t.string :IQ001__c
      t.string :IQ002__c
      t.string :IQ003__c
      t.string :IQ004__c
      t.string :IQ005__c
      t.string :IQ006__c
      t.string :IQ007__c
      t.string :IQ008__c
      t.string :IQ009__c
      t.string :IQ010__c
      t.string :IQ011__c
      t.string :IQ012__c
      t.string :IQ013__c
      t.string :IQ014__c
      t.string :IQ015__c
      t.boolean :is_otp_approved__c
      t.boolean :is_closed
      t.boolean :is_won
      t.boolean :is_deleted
      t.datetime :last_activity_date
      t.datetime :created_at
      t.string :created_by
      t.datetime :updated_at
      t.datetime :last_modified_date
      t.string :last_modified_by
      t.string :system_mod_stamp

      t.timestamps
    end
  end
end
