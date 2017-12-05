class AuthenticationService
  def self.authenticate email, password
    User.find_by(email_address: email).try(:authenticate, password)
  end

  def self.get_user_id_from_token token
    begin
      token_params = JWT.decode(token, ENV['RAILS_SECRET_TOKEN'], true, {algorithm: "HS256"})
      return token_params[0]["user_id"]
    rescue JWT::DecodeError
      return false
    end
  end
end
