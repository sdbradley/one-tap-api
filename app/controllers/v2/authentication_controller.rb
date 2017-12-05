class V2::AuthenticationController < ApplicationController
  def create
    if AuthenticationService.authenticate(params[:email], params[:password])
      user = User.find_by(email_address: params[:email])
      render json: JWT.encode(
        {user_id: user.id},
        ENV["RAILS_SECRET_TOKEN"],
        "HS256")
    else
      generate_error_response(401, "Username or password is incorrect")
    end
  end
end
