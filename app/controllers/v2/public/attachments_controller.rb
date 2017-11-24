class V2::Public::AttachmentsController < ApplicationController
    def index
        attachments = Attachment.where({parent_id: params[:parent_id]})
        response_body = {
            attachments: attachments
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end
end
