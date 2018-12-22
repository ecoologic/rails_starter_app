# A user of the system
class User < ApplicationRecord
  include Authorization
  include Authentication

  def to_s
    email
  end
end
