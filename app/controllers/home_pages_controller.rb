class HomePagesController < ApplicationController
  skip_authorization_check

  def index
    @title = SETTINGS[:name]
    flash.now[:notice] = "Welcome! Log in to do something (not really)" unless user_signed_in?
  end
end
