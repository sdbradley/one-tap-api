class Scorecard
    include ActiveModel::Model
    #attr_accessor :partner__c, :account, :prospecting, :completed, :nextsteps, :onsite, :proposal, :closedwon, :closedlost, :conversionrate, :campaign_score
    attr_accessor :name, :partner__c, :stage_name, :total

    def to_h
      {
        id: "#{partner__c}:#{stage_name}",
        name: name,
        partner__c: partner__c,
        stage_name: stage_name,
        total: total
      }
    end
  
    def self.find(params)
      campaign_id = params[:campaign_id] if params[:campaign_id].present?
      partner__c = params[:partner__c] if params[:partner__c].present?
      start_date = Time.at(params[:start_date].to_i).to_datetime if params[:start_date].present?
      end_date = Time.at(params[:end_date].to_i).to_datetime if params[:end_date].present?
      query = <<-SQL
        select a.name, o.partner__c, o.StageName as stage_name, COUNT(*) as total
        from Opportunity o
        inner join Account a on a.id=o.Partner__c
        where o.Partner__c='#{partner__c}'
        and o.Meeting_Date_Time__c >= '#{start_date}'
        and o.Meeting_Date_Time__c <= '#{end_date}'
        group by a.Name, o.Partner__c, o.StageName
        order by a.Name;
      SQL
      results = ActiveRecord::Base.connection.exec_query(query)
      results.map { |result| Scorecard.new(result); }
      #results
    end

    # def self.find(params)
    #   campaign_id = params[:campaign_id] if params[:campaign_id].present?
    #   partner__c = params[:partner__c] if params[:partner__c].present?
    #   start_date = params[:start_date] if params[:start_date].present?
    #   end_date = params[:end_date] if params[:end_date].present?
    #   query = <<-SQL
    #     select partner__c,
    #     (select name from accounts where account_id=partner__c) as account,
    #     max(case oppdetails.stage_name when 'Upcoming' then oppdetails.count else 0 end) prospecting,
    #     max(case oppdetails.stage_name when 'Occurred' then oppdetails.count else 0 end) completed,
    #     max(case oppdetails.stage_name when 'Next Steps Established' then oppdetails.count else 0 end) nextsteps,
    #     max(case oppdetails.stage_name when 'On-Site Meeting Set' then oppdetails.count else 0 end) onsite,
    #     max(case oppdetails.stage_name when 'Proposal/Price Quote' then oppdetails.count else 0 end) proposal,
    #     max(case oppdetails.stage_name when 'Closed Won' then oppdetails.count else 0 end) closedwon,
    #     max(case oppdetails.stage_name when 'Closed Lost' then oppdetails.count else 0 end) closedlost,
    #     ifnull(((max(case oppdetails.stage_name when 'Next Steps Established' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'On-Site Meeting Set' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Proposal/Price Quote' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Closed Won' then oppdetails.count else 0 end))/((max(case oppdetails.stage_name when 'Next Steps Established' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'On-Site Meeting Set' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Proposal/Price Quote' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Closed Won' then oppdetails.count else 0 end)+max(case oppdetails.stage_name when 'Occurred' then oppdetails.count else 0 end)))), 0) as conversionrate,
    #     (select (
    #         sum(ramp_up_call_scheduled__c 
    #         + ramp_up_call_completed__c 
    #         + account_list_sent_for_partner_approval 
    #         + partner_approved_account_list 
    #         + calling_has_begun__c 
    #         + calling_completed__c 
    #         + gathering_outstanding_feedback__c 
    #         + campaign_completed__c )
    #     ) from campaigns where partner__c=oppdetails.partner__c) as campaign_score
    #     from (
    #         select vw_opportunitydetails.stage_name, campaigns.partner__c, count(vw_opportunitydetails.opportunity_id) as count
    #         from campaigns
    #         left join vw_opportunitydetails on vw_opportunitydetails.campaign_id=campaigns.id
    #         where (
    #             ((vw_opportunitydetails.is_deleted=0) or (vw_opportunitydetails.is_deleted is null))
    #             and (
    #                 (campaigns.partner__c='#{partner__c}') or (campaigns.stakeholder__c='#{partner__c}')
    #             )
    #             and (campaigns.start_date >= #{start_date})
    #             and (campaigns.end_date <= #{end_date})
    #             and (campaigns.partner__c is not null)
    #             and (campaigns.partner__c <> '')
    #             and (campaigns.is_deleted = 0)
    #         )
    #         group by campaigns.partner__c, vw_opportunitydetails.stage_name
    #     ) as oppdetails
    #     group by partner__c
    #   SQL
    #   results = ActiveRecord::Base.connection.exec_query(query)
    #   results.map { |result| Scorecard.new(result); }
    # end
  end
  