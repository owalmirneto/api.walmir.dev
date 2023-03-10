# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WalmirDevApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.encoding = "utf-8"
    config.api_only = true

    ## TimeZone
    #
    config.time_zone = ActiveSupport::TimeZone.new("America/Recife")
    config.active_record.default_timezone = :local

    ## Load I18n configuration for locales
    #
    config.i18n.enforce_available_locales = true
    config.i18n.available_locales = ["en", "pt-BR"]
    config.i18n.default_locale = "pt-BR"
    config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.{rb,yml}").to_s]
  end
end
