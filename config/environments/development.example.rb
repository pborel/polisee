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

  # Set environment secrets
  ENV['SECRET_KEY_BASE'] = '55ddbe69b5e1cf8ae25011f404fc1a5a74c12433ad24eb1c09721b9ad8697c3362c20161825c90115a08202704bbe4062ea9cc7387cf755094d702c04b941cbb'
  ENV['TWITTER_CONSUMER_KEY'] = ''
  ENV['TWITTER_CONSUMER_SECRET'] = ''
end
