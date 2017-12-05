class V2::AdminController < ApplicationController
  include Authenticatable
  before_action :ensure_admin

  private

  def ensure_admin
    head(403) unless @current_user.is_admin?
  end
end
