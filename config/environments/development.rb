CacheReplaceBenchmark::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  config.cache_classes = false
  
  config.cache_store = :dalli_store

  # Do not eager load code on boot.
  config.eager_load = false

  # Enable caching
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  config.assets.debug = false
end
