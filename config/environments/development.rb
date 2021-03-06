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
  ENV['SECRET_KEY_BASE'] = '493f5c5a69827e7508a85069e7b0f15d0e856d5ca4faab444b8a97520b559ee316a89419ecd5f0cdca9d6e41f86ee89b040b24e6dcfa2b416ba5895bd86eaff0'
  ENV['TWITTER_CONSUMER_KEY'] = 'gCo5L3RMyftUepC70zPPt9j2d'
  ENV['TWITTER_CONSUMER_SECRET'] = 'urq8nx4QlRkdi1zBbvlrNFr2e2CSflvLwqOHQjWEyAd3F6ix8R'



end
