require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.action_mailer.delivery_method = :smtp
    host = 'salty-plains-80839.herokuapp.com'
    config.action_mailer.default_url_options = { host: host, protocol: 'https' }

 config.action_mailer.smtp_settings = {
   address:              'smtp.postmarkapp.com',
   port:                 587,
   domain:               'sarthakjha.com',
   user_name:            Rails.application.secrets.postmark_api_token,
   password:             Rails.application.secrets.postmark_api_token,
   authentication:       :plain,
   enable_starttls_auto: true
 }
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
