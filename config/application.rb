require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SerlerSdm
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    ActionMailer::Base.smtp_settings = {
   
   :address => 'smtp.gmail.com',
   :domain => 'mail.gmail.com',
   :port => 587,
   :username => 'lipi.parikh28@gmail.com', #ENV['GMAIL_USERNAME'],
   :password => 'weakpass', #ENV['GMAIL_PASSWORD'],
   :authentication => 'login',
   :enable_starttls_auto => true
    }
  end
end
