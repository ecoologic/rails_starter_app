require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

require_relative 'settings'

module App
  # The Rails Application
  class Application < Rails::Application
    console { require_relative 'console' }

    server_time_zone = File.read('/etc/timezone').delete("\n").split('/').last
    config.time_zone = server_time_zone # Brisbane

    config.load_defaults 5.2

    config.generators.system_tests = nil

    config.action_view.form_with_generates_remote_forms = false

    config.autoload_paths << 'lib'
  end
end
