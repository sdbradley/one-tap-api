class V2::AccountsController < AuthorizedController
    def index
        accounts = 
          if only_otp_clients?
            Account.where(is_otp_client_c: true).order(:name)
          elsif list_partners?
            id = @current_user.account.id
            Account.joins(:campaigns).where("Campaign.Stakeholder__c = ?", id).where("Campaign.Partner__c <> ?", id).where("Campaign.Status <> 'Completed'").order(:name)
          else
            Account.where(Type: 'Prospect').order(:name).limit(100)
          end
        response_body = {
          accounts: accounts.map(&:to_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end
    def show
        accounts = Account.where(id: params[:id])
        response_body = {
            accounts: accounts.map(&:to_detail_h)
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end

    private

    def only_otp_clients?
      permitted_params[:otp_client] == "1"
    end

    def list_partners?
      permitted_params[:list_partners] == "1"
    end

    def permitted_params
      params.permit(:otp_client, :list_partners)
    end

end
