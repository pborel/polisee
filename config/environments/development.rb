Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  # config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load


  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Set Sunlight API config
  ENV['SUNLIGHT_KEY'] = "6f32253a69584783ba98cbf86120d2d7"

  # Set environment secrets
  ENV['ORIGIN'] = 'http://localhost:8080'
  ENV['OAUTH_CALLBACK'] = 'http://127.0.0.1:3000/access_token'
  ENV['SECRET_KEY_BASE'] = '9422e253671a61bac79f4663ba71dd567ea90e10aa79390fb647e53f5aa91544b01be84d14304e319406bf67d9f4fc96101149948d3037fdaf60459f1b102502'
  ENV['TWITTER_CONSUMER_KEY'] = 'gCo5L3RMyftUepC70zPPt9j2d'
  ENV['TWITTER_CONSUMER_SECRET'] = 'urq8nx4QlRkdi1zBbvlrNFr2e2CSflvLwqOHQjWEyAd3F6ix8R'

  ENV['TWILIO_ACCOUNT_SID'] = 'AC514f7b223a49313d36df4f5aed73342b'
  ENV['TWILIO_AUTH_TOKEN'] = '7965e351f5a286ed8ec40f13e3d6808b'

  config.middleware.use Rack::TwilioWebhookAuthentication, Rails.application.secrets.twilio_auth_token, '/voice'






end
