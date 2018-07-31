class UserMailer < ApplicationMailer

  def send_force_password_email(user, referer)
    @user = user
    @referer = referer
    mail(to: @user.email_address, subject: 'Please reset your 1Tap Password')
  end
end
