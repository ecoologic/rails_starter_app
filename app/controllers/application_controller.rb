# Extend all your Controllers from here
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :authenticate_user!, except: :home_page

  def home_page
    flash.now[:notice] = "Welcome! Log in to do something (not really)" unless user_signed_in?
  end
end
