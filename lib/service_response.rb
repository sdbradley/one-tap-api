class ServiceResponse
  attr_accessor :status, :status_code, :body   

  def initialize(params)
    @status = params[:status]
    @status_code = params[:status_code]
    @body = params[:body]
  end

  def to_renderable
    {
      status: status_code,
      json: body
    }
  end

  def not_found?
    status_code == 404
  end

  def success?
    status == :success
  end

  def error?
    status == :error
  end

  def has_body?
    !(body.nil? || body.empty?)
  end
end
