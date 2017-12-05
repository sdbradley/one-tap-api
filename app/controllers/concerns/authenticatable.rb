module Authenticatable
  extend ActiveSupport::Concern

  included do
    before_action :check_authentication_token!

    def check_authentication_token!
      auth_header = request.headers["Authorization"]
      /Bearer (?<token>.+)$/ =~ auth_header
      current_user_id = AuthenticationService.get_user_id_from_token(token)
      if current_user_id
        # This should always return an object or struct!
        @current_user = User.get(current_user_id)
      else
        head(401)
      end
    end
  end
end
