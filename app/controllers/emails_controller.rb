class EmailsController < ApplicationController  
  def reset_password
    @user = User.reset_password(params[:user])
    
    respond_to do |format|
      if @user.reset_password
        # tell the UserMailer to send an email after reset password
        UserMailer.reset_password_email(@user).deliver_now
        format.html { redirect_to(@user, notice: 'Password reseted') }
      end
    end
  end
end
 