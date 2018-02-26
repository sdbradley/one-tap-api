class V2::AdminController < ApplicationController
  include Authenticatable
  #before_action :ensure_admin

  def index_users
    users = User.all.left_outer_joins(:account)
    response_body = {
      users: users.map(&:to_h)
    }
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
  end

  private

  def ensure_admin
    head(403) unless @current_user.is_admin?
  end
end
