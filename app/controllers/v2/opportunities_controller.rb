class V2::OpportunitiesController < AuthorizedController
    def index
        opportunities = OpportunityDetail.get(permitted_params).joins(:opportunity_feedbacks).order("vw_opportunitydetails.meeting_date_time__c desc")
        response_body = {
            opportunities: opportunities.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def show
        opportunities = OpportunityDetail.joins(:notes).joins(:opportunity_contact_roles).joins(:attachments).joins(:opportunity_feedbacks).where(opportunity_id: params[:id]).distinct
        response_body = {
            opportunities: opportunities.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def create_feedback
        feedback = OpportunityFeedback.create(feedback_params.merge({user_key: @current_user.id}))
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: feedback.to_json)
    end

  private
  
  def permitted_params
    params.permit(:start_date, :end_date, :partner__c, :stage_name)
  end

  def feedback_params
    params.permit(:feedback, :opportunity_id, :feedback_type)
  end

end
