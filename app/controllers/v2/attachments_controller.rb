class V2::AttachmentsController < ApplicationController
    def index
        attachments = Attachment.where({parent_id: params[:parent_id]})
        response_body = {
            attachments: attachments
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def index_download
        attachment = Attachment.find_by(id: permitted_params[:attachment_id]);
        attachment.recording_downloaded_date = DateTime.now;
        attachment.save!
        download = AttachmentDownload.create(attachment_id: permitted_params[:attachment_id], download_date: DateTime.now)
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: download.to_json)
    end

    private
  
    def permitted_params
      params.permit(:attachment_id)
    end

end
