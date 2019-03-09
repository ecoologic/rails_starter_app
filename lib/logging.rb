module Logging
  def log(message = 'Started', info = {})
    Log.info("#{to_s}:#{Rich::Ruby.method_name(1)}: #{message}")
    Log.info(info) if info.present?
  end
end
