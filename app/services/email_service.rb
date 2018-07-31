class EmailService
    def self.send_force_password_email(user, referer)
        UserMailer.send_force_password_email(user, referer).deliver_now
    end
end
