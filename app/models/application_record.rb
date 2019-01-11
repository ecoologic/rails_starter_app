# Extend all your AR models from here
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :ordered, -> { order(updated_at: :desc) }

  def to_s
    "#{self.class}(#{id || '#' + object_id})"
  end
end
