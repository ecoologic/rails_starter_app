# A log to use instead of Rails.logger; Handles Error notifications too
module Log
  def self.logger
    Rails.logger
  end

  def self.debug(*args)
    logger.debug(*args)
    nil
  end

  def self.info(*args)
    logger.info(*args)
    nil
  end

  def self.warn(message, exception = nil, info = {})
    logger.warn logger_message(message, exception, info)
    # Rollbar.warn(message, exception, info_with_stack(exception, info))
    nil
  end

  def self.error(message, exception = nil, info = {})
    logger.error logger_message(message, exception, info)
    # Rollbar.error(message, exception, info_with_stack(exception, info))
    nil
  end

  def self.fatal(message, exception = nil, info = {})
    logger.fatal logger_message(message, exception, info)
    # Rollbar.critical(message, exception, info_with_stack(exception, info))
    raise(message) if Rails.env.development?
  end

  def self.logger_message(message, exception, info)
    [
      message,
      "Warn exception: #{exception}",
      exception && exception.backtrace.to_a.join("\n\t"),
      "Warn info: #{info.to_h.inspect.gsub(', ', ",\n\t")}"
    ].join("\n")
  end

  def self.info_with_stack(exception, info)
    exception ? info.to_h : { caller: caller }.merge(info.to_h)
  end
end
