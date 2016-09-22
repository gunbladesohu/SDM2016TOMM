class RegistrationsController < Devise::RegistrationsController
    before_filter :authenticate_visitor!

    private
  def sign_up_params
    params.require(:visitor).permit(:name, :email, :password, :password_confirmation)
  end
  def account_update_params
    params.require(:visitor).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
  
end