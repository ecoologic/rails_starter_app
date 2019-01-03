# Good old declarative plain _data_
# Keep 1:1 name mapping between env vars, Ruby classes and Rails config/credentials
# Don't insert credentials here, use CREDENTIALS
environment_settings = {
  development: { ##############################################################
    action_mailer: {
      smtp_settings: {
        address:              'smtp.gmail.com',
        port:                 587,
        domain:               'gmail.com',
        user_name:            ENV['APP_ACTION_MAILER__SMTP_SETTINGS__USER_NAME'],
        authentication:       :plain,
        enable_starttls_auto: true
      },
      default_url_options: { host: 'http://lvh.me', port: 3000 }
    },
    web_console: { whitelisted_ips: '172.19.0.1' }
  },
  test: { #####################################################################
    action_mailer: {
      # smtp_settings:
      default_url_options: { host: 'http://lvh.me' }
    }
    # web_console:
  }
}[Rails.env.to_sym]

SETTINGS = { ##################################################################
  author: "Erik Ecoologic",
  name: "App"
}.merge(environment_settings)
  .tap { |h| h.default = {} }
  .freeze
