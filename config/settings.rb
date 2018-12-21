# Good old declarative plain _data_
# Keep 1:1 name mapping between env vars, Ruby classes and Rails config/credentials
SETTINGS = {
  #############################################################################
  development: {
    action_mailer: {
      smtp_settings: {
        address:              'smtp.gmail.com',
        port:                 587,
        domain:               'gmail.com',
        user_name:            ENV['APP_ACTION_MAILER__SMTP_SETTINGS__USER_NAME'],
        # password:
        authentication:       :plain,
        enable_starttls_auto: true
      },
      default_url_options: { host: 'http://lvh.me', port: 3000 }
    },
    web_console: { whitelisted_ips: '172.19.0.1' }
  },
  #############################################################################
  test: {
    action_mailer: {
      default_url_options: { host: 'http://lvh.me' }
    }
    # web_console:
  }
}[Rails.env.to_sym].tap { |h| h.default = {} }.freeze
