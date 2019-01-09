# When paent_page is nil this is the main site
# Otherwise it refers to the "Terms and Conditions" of that site
class Page < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :parent_page, class_name: 'Page', optional: true

  validate :name, :url, presence: true
end
