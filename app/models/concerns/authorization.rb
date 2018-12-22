# Login, Logout stuff
module Authorization
  extend ActiveSupport::Concern

  included do
    enum role: { basic: 0, god: -1 }

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
