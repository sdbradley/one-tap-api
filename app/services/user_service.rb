class UserService
   
  def self.validate_token(params)
    user = User.find_by(email_address: params[:email])
    if !params[:token].blank? && user.validate!(params[:token])
      ServiceResponse.new(status: :success, status_code: 200, body: { user: user.to_h })
    else
      ServiceResponse.new(status: :error, status_code: 401)
    end
  rescue ActiveRecord::RecordNotFound
    ServiceResponse.new(status: :error, status_code: 401)
  end
  
  def self.reset_password(params)
    user = User.find_by!(email_address: params[:email])
    if !params[:token].blank? && user.valid_token?(params[:token])
      if user.set_new_password!(params[:password]) && user.validate!(params[:token])
        ServiceResponse.new(status: :success, status_code: 200, body: { user: user.to_h })
      else
        ServiceResponse.new(status: :error, status_code: 422, body: { errors: user.errors })
      end
    else
      ServiceResponse.new(status: :error, status_code: 401)
    end
  rescue ActiveRecord::RecordNotFound
    service_error_response
  end
  
  def self.new_password(params)
    user = User.find_by!(email_address: params[:email_address])
    if user.set_new_password!(params[:password])
     ServiceResponse.new(status: :success, status_code: 200, body: { user: user.to_h })
    else
     ServiceResponse.new(status: :error, status_code: 422, body: { errors: user.errors })
    end
  rescue ActiveRecord::RecordNotFound
    service_error_response
  end
end
