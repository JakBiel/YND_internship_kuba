require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsPierwszaApka
  class Application < Rails::Application

    config.api_only = true
       # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:3006', '130.162.159.44:3005', /http:\/\/192\.168\.0\.\d{1,3}(:\d+)?/
        resource '*', headers: :any, methods: [:get, :post, :options, :patch, :delete]
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

