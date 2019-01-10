class Rich::Url
  def initialize(url)
    @url = url
  end

  def uri
    URI.parse(url)
  end

  def valid?
    uri.is_a?(URI::HTTP) && !uri.host.nil?
  rescue URI::InvalidURIError
    false
  end

  def prettify
    uri.to_s.match(%r{[http|https]://([^/]+)})[1]
  end

  private

  attr_reader :url
end
