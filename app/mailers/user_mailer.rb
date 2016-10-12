class UserMailer < ApplicationMailer
 default from: 'sdmserlergems@gmail.com'
 
  def password_reset(user)
    @user = user
    mail to: @user.email, subject: "Reset your Password for Serler"
  end

end
