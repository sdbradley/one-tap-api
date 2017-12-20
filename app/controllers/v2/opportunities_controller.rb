class V2::OpportunitiesController < ApplicationController
    def index
        opportunities = OpportunityDetail.get(permitted_params)
        response_body = {
            opportunities: opportunities.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

  private
  
  def permitted_params
    params.permit(:start_date, :end_date, :partner_id, :stage_name)
  end

end
