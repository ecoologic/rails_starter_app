# Here your changes to en.yml have been loaded (unlike in initializers)
Date::DATE_FORMATS[:default] = I18n.t!('date.formats.default')
Time::DATE_FORMATS[:default] = I18n.t!('time.formats.default')
Time::DATE_FORMATS[:no_date] = "%H:%M"

CREDENTIALS = Rails.application.credentials.config.to_h.freeze
Cache = Rails.cache
Log = Rails.logger
