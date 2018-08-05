class V2::CampaignsController < ApplicationController
    def index
        campaigns = Campaign.search(permitted_params).order(start_date: :desc)
        response_body = {
            campaigns: campaigns.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def show
        campaigns = Campaign.where(id: params[:id])
        notes = Note.get(permitted_params).limit(10)
        opportunities = Opportunity.with_campaign_of(params[:id]).order(meeting_date_time__c: :desc).limit(100)
        response_body = {
            campaigns: campaigns.map(&:to_h),
            notes: notes.map(&:to_h),
            opportunities: opportunities.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def notes
        notes = Note.get(permitted_params)
        response_body = {
            notes: notes.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def statistics
        statistics = Campaign.statistics(permitted_params)
        response_body = {
            statistics: statistics.map(&:to_stats_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def index_opportunities_export
      opportunities = Opportunity.with_campaign_of(params[:id]).order(meeting_date_time__c: :desc)
      export_opportunities(opportunities.map(&:to_h))
    end

  private
  
  def permitted_params
    params.permit(
        :campaign_type, 
        :status, 
        :start_date, 
        :end_date, 
        :stakeholder__c, 
        :partner__c,
        :account_id,
        :role
    )
  end

  def export_opportunities(opportunities)
    send_data(
      Opportunity.to_csv(opportunities),
      filename: "opportunities_for_campaign_#{params[:id]}_#{Date.today}",
      type: "text/csv"
    )
  end

end
