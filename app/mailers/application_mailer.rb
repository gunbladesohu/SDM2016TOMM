# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default from: "sdmserlergems@gmail.com"
  def send_email
    mail to: '543155492@qq.com', subject: 'test';
  end
  layout 'mailer'
end
 
