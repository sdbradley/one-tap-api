class V2::UsersController < AuthorizedController
  def current
    user = User.get(@current_user.id)
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: user.to_h)
  end
end
