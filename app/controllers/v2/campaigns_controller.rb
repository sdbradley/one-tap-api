class V2::CampaignsController < ApplicationController
    def index
        campaigns = Campaign.get(permitted_params)
        response_body = {
            campaigns: campaigns.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    #def index_news
    #    campaign_news = CampaignNewsItem.get(permitted_params)
    #    response_body = {
    #        campaign_news: campaign_news
    #    }
    #    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    #end
    def notes
        notes = Note.where(parent_id: params[:campaign_id])
        response_body = {
            notes: notes.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def statistics
        statistics = Campaign.get_statistics(permitted_params)
        response_body = {
            statistics: statistics
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

  private
  
  def permitted_params
    params.permit(:campaign_type, :status, :start_date, :end_date, :stakeholder__c, :partner__c)
  end

end
