class HomePagesController < ApplicationController
  skip_authorization_check

  def index
    flash.now[:notice] = "Welcome! Log in to do something (not really)" unless user_signed_in?
  end
end
