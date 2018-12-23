# Login, Logout stuff
module Authorization
  extend ActiveSupport::Concern

  included do
    enum role: { basic: 0, god: -1 }, _suffix: true
  end
end
