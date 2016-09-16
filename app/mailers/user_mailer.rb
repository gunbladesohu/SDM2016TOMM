class UserMailer < ApplicationMailer
 default from: 'sdmserlergems@gmail.com'
 
 def resetpw_email
     @user = user
     @url = 'https://sheltered-brook-26948.herokuapp.com'
     mail(to: @user.email, subject: 'Your new password for Serler')
 end

end
