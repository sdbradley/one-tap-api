class V2::AttachmentsController < ApplicationController
    def index
        attachments = Attachment.where({parent_id: params[:parent_id]})
        response_body = {
            attachments: attachments
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    def index_download
        attachment = Attachment.find_by(id: permitted_params[:attachment_id])
        user = User.find_by(id: permitted_params[:user_id])
        download = AttachmentDownload.create(attachment: attachment, user: user, download_date: DateTime.now.to_i)
        send_data attachment.body,
          :type => attachment.content_type,
          :disposition => 'attachment',
          :filename => attachment.name
    end

    private
  
    def permitted_params
      params.permit(:attachment_id, :user_id)
    end

end
