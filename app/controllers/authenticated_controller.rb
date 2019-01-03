# Inherit almost all controllers from here
class AuthenticatedController < ApplicationController
  before_action :authenticate_user!
end
