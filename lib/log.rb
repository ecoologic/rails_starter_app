# A log to use instead of Rails.logger; Handles Error notifications too
module Log
  def self.logger
    Rails.logger
  end

  def self.debug(message, e: nil, **info)
    logger.debug(message)
    logger.debug(pretty_exception(e)) if e
    logger.debug(pretty_info(info)) if info.present?
    nil
  end

  def self.info(message, e: nil, **info)
    logger.info(message)
    logger.info(pretty_exception(e)) if e
    logger.info(info) if info.present?
    nil
  end

  def self.warn(message, e: nil, **info)
    logger.warn message
    logger.warn(pretty_exception(e)) if e
    logger.warn info if info.present?
    # Rollbar.warn(message, e, info_with_stack(exception, info))
    nil
  end

  def self.error(message, e: nil, **info)
    logger.error message
    logger.error(pretty_exception(e)) if e
    logger.error info if info.present?
    # Rollbar.error(message, e, info_with_stack(exception, info))
    nil
  end

  def self.fatal(message, e: nil, **info)
    logger.fatal message
    logger.fatal(pretty_exception(e)) if e
    logger.fatal info if info.present?
    # Rollbar.critical(message, e, info_with_stack(exception, info))
    raise(e) if Rails.env.development?
  end

  def self.pretty_exception(exception)
    [
      exception.message,
      exception.backtrace.to_a.join("\n\t"),
    ].join("\n")
  end

  def self.pretty_info(info)
    info.to_h.inspect.gsub(', ', ",\n\t")
  end

  # def self.info_with_stack(exception, info)
  #   exception ? info.to_h : { caller: caller }.merge(info.to_h)
  # end
end
