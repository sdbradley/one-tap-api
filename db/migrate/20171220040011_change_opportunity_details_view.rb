class ChangeOpportunityDetailsView < ActiveRecord::Migration[5.0]
  def change
    ActiveRecord::Base.connection.execute("
    drop view opportunity_details
    ")

    ActiveRecord::Base.connection.execute("
    create view opportunity_details as
      select
        opportunities.id,
        opportunities.opportunity_id,
        opportunities.account_id,
        accounts.name as account,
        opportunities.name,
        opportunities.description,
        opportunities.stage_name,
        opportunities.amount,
        opportunities.probability,
        opportunities.close_date,
        opportunities.opportunity_type,
        opportunities.next_step,
        opportunities.lead_source,
        opportunities.is_closed,
        opportunities.is_won,
        opportunities.forecast_category,
        opportunities.forecast_category_name,
        opportunities.has_opportunity_line_item,
        opportunities.pricebook_2_id,
        opportunities.fiscal_quarter,
        opportunities.fiscal_year,
        opportunities.created_at,
        opportunities.created_by,
        opportunities.last_modified_date,
        opportunities.last_modified_by,
        opportunities.system_mod_stamp,
        opportunities.last_activity_date,
        opportunities.is_deleted,
        opportunities.meeting_date_time__c,
        opportunities.is_otp_approved__c,
        opportunities.IQ001__c,
        opportunities.IQ002__c,
        opportunities.IQ003__c,
        opportunities.IQ004__c,
        opportunities.IQ005__c,
        opportunities.IQ006__c,
        opportunities.IQ007__c,
        opportunities.IQ008__c,
        opportunities.IQ009__c,
        opportunities.IQ010__c,
        opportunities.IQ011__c,
        opportunities.IQ012__c,
        opportunities.IQ013__c,
        opportunities.IQ014__c,
        opportunities.IQ015__c,
        opportunities.cover_sheet_text__c,
        campaigns.stakeholder__c,
        campaigns.partner__c,
        campaigns.start_date,
        campaigns.end_date,
        campaigns.is_deleted as campaign_is_deleted,
        campaigns.id as campaign_id,
        acct.name as partner
      from opportunities
      inner join campaigns on campaigns.campaign_id=opportunities.campaign_id
      inner join accounts on accounts.account_id=opportunities.account_id
      inner join accounts acct on acct.account_id=campaigns.partner__c
      ")
  end
end
