# A user of the system
class User < ApplicationRecord
  include Authentication
  include Authorization

  def to_s
    email
  end
end
