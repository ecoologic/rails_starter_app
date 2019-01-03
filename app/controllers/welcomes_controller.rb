class WelcomesController < ApplicationController
  def home_page
    @title = SETTINGS[:name]
    flash.now[:notice] = "Welcome! Log in to do something (not really)" unless user_signed_in?
  end
end
