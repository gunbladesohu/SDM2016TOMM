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
    ActionMailer::Base.delivery_method = :smtp
    #gmail
    ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 25,
    :domain               => "gmail.com",
    :user_name            => "sdmserlergems",
    :password             => "govtzelwdlmobsro",
    :authentication       => "plain",
    :enable_starttls_auto => true
}
  end
end
