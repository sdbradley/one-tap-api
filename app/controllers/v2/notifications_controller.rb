class V2::NotificationsController < AuthorizedController
  include Authenticatable

  def index
    notifications = Notification.get(permitted_params).distinct.order("sent_on desc").offset(0).limit(50)
    response_body = {
      notifications: notifications.map(&:to_h)
    }
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
  end

  def update
    notification = Notification.find_by_id!(params[:id])
    notification.update({was_sent: 0, sent_on:nil})
    response_body = {
      notifications: [notification.to_h]
    }
    standard_response_for ServiceResponse.new(status: :success, status_code: 200, body: response_body.to_json)
  end

  private
  
  def permitted_params
    params.permit(:start_date, :end_date)
  end

end
