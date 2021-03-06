class V2::PublicController < ApplicationController

  def reset_password
    standard_response_for UserService.reset_password(params[:user])
  end
  
  def validate_token
    standard_response_for UserService.validate_token(params[:user])
  end

  def create_user
    standard_response_for User.create_user(create_user_params)
  end
  
private
  
  def permitted_params
    params.permit({user: [:first_name, :last_name, :email_address, :prefix, :password, :password_confirmation, :create]})
  end

  def create_user_params
    params.permit(:first_name, :last_name, :email_address, :password, :account_id, :user_name)
  end

end
