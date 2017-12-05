class V2::ContactsController < ApplicationController
  def index
    contacts = Contact.get(permitted_params)
      response_body = {
        contacts: contacts
      }
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
  end

  private
  
  def permitted_params
    params.permit(:account_id)
  end

end
