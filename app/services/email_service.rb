class EmailService
    def self.send_force_password_email(user)
        UserMailer.send_force_password_email(user).deliver_now
    end
end
