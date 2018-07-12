class V2::AdminController < ApplicationController
  include Authenticatable
  #before_action :ensure_admin

  def index_users
    users = User.search(params)
    response_body = {
      users: users.map(&:to_h)
    }
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
  end

  def create_user
    standard_response_for User.create_user(permitted_params)
  end

  def update_user
    standard_response_for User.update_user(params[:id], permitted_params)
  end

  def destroy_user
    standard_response_for User.delete_user(params[:id])
  end

  private

  def ensure_admin
    head(403) unless @current_user.is_admin?
  end

  def permitted_params
    params.permit(:first_name, :last_name, :email_address, :user_name, :account_id, :search_term)
  end

end
