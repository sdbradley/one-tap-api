class V2::ScorecardController < ApplicationController
    def index
        scorecard = Scorecard.find(params)
        response_body = {
            scorecard: scorecard.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

  private

end
