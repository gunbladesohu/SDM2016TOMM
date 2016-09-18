# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    # Preview this email at   
    # http://florachaokeai-floramemeda.c9users.io:8080/password_resets
    def password_reset    
        user = User.first     
        user.reset_token = User.new_token    
        UserMailer.password_reset(user)  
    end
end
