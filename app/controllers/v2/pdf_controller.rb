class V2::OpportunitiesController < ApplicationController

  def print
    @opportunity ||= Opportunity.find_by(id: params[:opportunity_id])
    @account ||= Account.find_by(id: params[:account_id])
    respond_to do |format|
      format.pdf do
        html = render_to_string(
            file: '/app/views/templates/datasheet.html.erb'
        )
        pdf = PDFKit.new(html).to_pdf
        send_data pdf,
          filename: "export.pdf",
          type: 'application/pdf',
          disposition: 'inline'
      end
    end
  end
end
