class V2::AuthenticationController < ApplicationController
  def create
    user = User.find_by(email_address: params[:email])
    return head(401) if user.nil?
    if user.force_password_change
      user.generate_reset_token
      user.force_password_change = false
      user.save
      #EmailService.send_force_password_email(user, request.referer) unless Rails.env.test?
      standard_response_for ServiceResponse.new(status: 412, status_code: 412, body: { email: params[:email], errors: "User must change password" })
    elsif user.try(:authenticate, params[:password])
      render json: JWT.encode(
        { user_id: User.find_by(email_address: params[:email]).id },
        ENV["RAILS_SECRET_TOKEN"],
        "HS256"
      )
    else
      head(401)
    end
  end
end
