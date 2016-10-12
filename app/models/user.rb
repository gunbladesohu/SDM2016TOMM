class User < ApplicationRecord
  attr_accessor :remember_token, :reset_token  
  before_save   :downcase_email   
  
  has_secure_password
  validates :first_name,
            presence: true
  validates :last_name,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{first_name} #{last_name}"
  end
  
    # reset password  
  def create_reset_digest     
    self.reset_token = User.new_token     
    update_attribute(:reset_digest,  User.digest(reset_token))
  end
  
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  
   #send_password_reset_email
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  private     
    # downcase   
    def downcase_email       
      self.email = email.downcase    
    end
    
end
