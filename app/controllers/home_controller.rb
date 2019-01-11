class HomeController < ApplicationController
  before_action { @title = SETTINGS[:name] }

  def unauthenticated
    flash.now[:notice] = "Welcome! Log in to do something (not really)"
  end

  def authenticated
    @pages = listable(Page)
  end
end
