class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
  rescue_from Errors::Forbidden, with: :forbidden
  rescue_from Errors::BadRequest, with: :bad_request

  def standard_response_for service_call
    if service_call.has_body?
      render(**service_call.to_renderable)
    else
      head(service_call.status_code)
    end
  end

  def generate_error_response(status_code, message)
    render status: status_code, json: {error: message}
  end

  def unprocessable_entity(message)
    generate_error_response(422, message)
  end

  def not_found
    head(404)
  end

  def forbidden
    head(403)
  end

  def bad_request(error)
    generate_error_response(422, error.message)
  end
end
