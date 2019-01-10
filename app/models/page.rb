# When paent_page is nil this is the main site
# Otherwise it refers to the "Terms and Conditions" of that site
class Page < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :parent_page, class_name: 'Page', optional: true

  validates :name, presence: true
  validate :validate_url

  before_validation { self.url = rich_url.uri.normalize }

  # http://www.facebook.com -> www.facebook.com
  def pretty_url
    rich_url.prettify
  end

  private

  def rich_url
    Rich::Url.new(url)
  end

  def validate_url
    rich_url.valid? || errors.add(:url, "is invalid")
  end
end
