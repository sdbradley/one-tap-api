class V2::AccountsController < ApplicationController
    def index
        accounts = Account.where(account_type: 'Prospect')
        response_body = {
            accounts: accounts
        }
        standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
    end
end
