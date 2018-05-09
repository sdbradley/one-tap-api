class V2::ContactsController < ApplicationController
  def index
    contacts = Contact.all.limit(100)#get(permitted_params)
      response_body = {
        contacts: contacts.map(&:to_h)
      }
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
  end

  private
  
  def permitted_params
    params.permit(:account_id)
  end

end
