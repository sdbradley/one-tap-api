class Scorecard
    include ActiveModel::Model
    attr_accessor :partner__c, :account, :prospecting, :completed, :nextsteps, :onsite, :proposal, :closedwon, :closedlost, :conversionrate, :campaign_score
  
    def to_h
      {
        id: partner__c,
        partner__c: partner__c,
        account: account,
        prospecting: prospecting.to_f,
        completed: completed.to_f,
        nextsteps: nextsteps.to_f,
        onsite: onsite.to_f,
        proposal: proposal.to_f,
        closedwon: closedwon.to_f,
        closedlost: closedlost.to_f,
        conversionrate: conversionrate.to_f,
        campaign_score: campaign_score.to_f
      }
    end
  
    def self.find(params)
      campaign_id = params[:campaign_id] if params[:campaign_id].present?
      partner__c = params[:partner__c] if params[:partner__c].present?
      start_date = params[:start_date] if params[:start_date].present?
      end_date = params[:end_date] if params[:end_date].present?
      query = <<-SQL
        select partner__c,
        (select name from accounts where account_id=partner__c) as account,
        max(case oppdetails.stage_name when 'Upcoming' then oppdetails.count else 0 end) prospecting,
        max(case oppdetails.stage_name when 'Occurred' then oppdetails.count else 0 end) completed,
        max(case oppdetails.stage_name when 'Next Steps Established' then oppdetails.count else 0 end) nextsteps,
        max(case oppdetails.stage_name when 'On-Site Meeting Set' then oppdetails.count else 0 end) onsite,
        max(case oppdetails.stage_name when 'Proposal/Price Quote' then oppdetails.count else 0 end) proposal,
        max(case oppdetails.stage_name when 'Closed Won' then oppdetails.count else 0 end) closedwon,
        max(case oppdetails.stage_name when 'Closed Lost' then oppdetails.count else 0 end) closedlost,
        ifnull(((max(case oppdetails.stage_name when 'Next Steps Established' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'On-Site Meeting Set' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Proposal/Price Quote' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Closed Won' then oppdetails.count else 0 end))/((max(case oppdetails.stage_name when 'Next Steps Established' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'On-Site Meeting Set' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Proposal/Price Quote' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Closed Won' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Occurred' then oppdetails.count else 0 end)))), 0) as conversionrate,
        (select (
            sum(cast(ramp_up_call_scheduled__c as int)
            +cast(ramp_up_call_completed__c as int)
            +cast(account_list_sent_for_partner_approval as int)
            +cast(partner_approved_account_list as int)
            +cast(calling_has_begun__c as int)
            +cast(calling_completed__c as int)
            +cast(gathering_outstanding_feedback__c as int)
            +cast(campaign_completed__c as int))
        ) from campaigns where partner__c=oppdetails.partner__c) as campaign_score
        from (
            select vw_opportunitydetails.stage_name, campaigns.partner__c, count(vw_opportunitydetails.opportunity_id) as count
            from campaigns
            left join vw_opportunitydetails on vw_opportunitydetails.campaign_id=campaigns.id
            where (
                ((vw_opportunitydetails.is_deleted=0) or (vw_opportunitydetails.is_deleted is null))
                /*and (campaigns.campaign_id='#{campaign_id}')*/
                and (
                    (campaigns.partner__c='#{partner__c}') or (campaigns.stakeholder__c='#{partner__c}')
                )
                and (campaigns.start_date >= #{start_date})
                and (campaigns.end_date <= #{end_date})
                and (campaigns.partner__c is not null)
                and (campaigns.partner__c <> '')
                and (campaigns.is_deleted = 0)
            )
            group by campaigns.partner__c, vw_opportunitydetails.stage_name
        ) as oppdetails
        group by partner__c
      SQL
      results = ActiveRecord::Base.connection.exec_query(query)
      results.map { |result| Scorecard.new(result); }
    end
  end
  