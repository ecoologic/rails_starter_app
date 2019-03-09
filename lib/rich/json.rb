# Helper methods for JSON objects, OO style
class Rich::Json
  def initialize(json)
    @json = json
  end

  def safe_parse(error_result = nil)
    JSON.parse(json)
  rescue => e
    if e.class.name.start_with?('JSON::')
      error_result
    else
      raise
    end
  end

  private

  attr_reader :json
end
