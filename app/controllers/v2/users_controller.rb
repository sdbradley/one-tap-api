class V2::UsersController < AuthorizedController

  def current
    user = User.get(@current_user.id)
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: user.to_h)
  end

  def update
    user = User.get(@current_user.id)
    if user.set_new_password!(params[:password])
      standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: { user: user.to_h })
    else
      standard_response_for ServiceResponse.new(status: :error, status_code: 422, body: { errors: user.errors })
    end
  rescue ActiveRecord::RecordNotFound
    standard_response_for ServiceResponse.new(status: :error, status_code: 404)
  end

end
