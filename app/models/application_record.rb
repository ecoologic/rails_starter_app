# Extend all your AR models from here
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # NOTE: Remember to add an index to updated_at in every model
  #       where you intend to leave this default
  scope :ordered, -> { order(updated_at: :desc) }

  def to_s
    "#{self.class}(#{id || '#' + object_id})"
  end
end
