class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :campaign_id
      t.text :description
      t.string :parent_id
      t.string :campaign_type
      t.string :status
      t.bigint :start_date
      t.bigint :end_date
      t.decimal :expected_revenue
      t.decimal :budgeted_cost
      t.decimal :actual_cost
      t.decimal :expected_response
      t.integer :number_sent
      t.integer :number_of_leads
      t.integer :number_of_converted_leads
      t.integer :number_of_contacts
      t.integer :number_of_response
      t.integer :number_of_opportunities
      t.integer :number_of_won_opportunities
      t.decimal :amount_all_opportunities
      t.decimal :amount_won_opportunities
      t.string :stakeholder__c
      t.string :partner__c
      t.string :campaign_news__c
      t.string :otp_acct_manager_email
      t.string :otp_acct_manager_phone
      t.string :otp_acct_manager_title
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
      t.string :cover_sheet_text__c
      t.boolean :ramp_up_call_scheduled__c
      t.boolean :account_list_sent_for_partner_approval
      t.boolean :partner_approved_account_list
      t.boolean :calling_has_begun__c
      t.boolean :calling_completed__c
      t.boolean :gathering_outstanding_feedback__c
      t.boolean :campaign_completed__c
      t.string :list_criteria_zip_code__c
      t.string :list_criteria_state__c
      t.string :list_criteria_company_size__c
      t.string :list_criteria_annual_revenue__c
      t.string :list_criteria_date_contacted__c
      t.string :owner__id
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
