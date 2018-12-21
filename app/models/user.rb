# A user of the system
class User < ApplicationRecord
  include Authentication,
          Authorization

  def to_s
    email
  end
end
