# Extend all your AR models from here
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
