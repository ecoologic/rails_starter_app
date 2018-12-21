module Authorization
  extend ActiveSupport::Concern

  included do
    scope :basic, -> { where(role: :basic) }
    scope :god, -> { where(role: :god) }
  end

  def basic?
    role.to_sym == :basic
  end

  def god?
    role.to_sym == :god
  end
end
