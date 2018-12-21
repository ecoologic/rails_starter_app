# Extend all your Controllers from here
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :authenticate_user!, except: :home_page

  check_authorization unless: :devise_controller?
end
