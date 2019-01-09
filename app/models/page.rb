# TODO: lib
module Rich; end
module Rich::URI
  def self.valid?(url)
    uri = ::URI.parse(url)
    uri.is_a?(URI::HTTP) && !uri.host.nil?
  rescue URI::InvalidURIError
    false
  end
end

# When paent_page is nil this is the main site
# Otherwise it refers to the "Terms and Conditions" of that site
class Page < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :parent_page, class_name: 'Page', optional: true

  validates :name, presence: true
  validate :valid_url

  before_validation { self.url = uri.normalize }

  def uri
    URI.parse(url)
  end

  private

  def valid_url
    Rich::URI.valid?(url) || errors.add(:url, "is invalid")
  end
end
