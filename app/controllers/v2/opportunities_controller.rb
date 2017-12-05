class V2::OpportunitiesController < ApplicationController
    def index
        opportunities = Opportunity.get(permitted_params)
        response_body = {
            opportunities: opportunities
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

  private
  
  def permitted_params
    params.permit(:start_date, :end_date, :partner_id)
  end

end
