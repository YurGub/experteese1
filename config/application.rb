require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Experteese
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.fallbacks = true
    config.i18n.fallbacks = [:en]

    # don't generate RSpec tests for views and helpers
    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.view_specs true
      g.helper_specs false
      g.stylesheets = false
      g.javascripts = false
      g.helper = false
    end

   #  config.autoload_paths += %W(\#{config.root}/lib)
   #  config.autoload_paths += Dir[Rails.root.join('lib')]
   # # config.autoload_paths += Dir[Rails.root.join('lib', 'added_classes', 'search_work')]



  end
end
