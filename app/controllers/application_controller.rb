# Extend all your Controllers from here
class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  # Prepare for listing on a page (eg: table/ul/li)
<<<<<<< HEAD
  # NOTE: Remember to add an index to updated_at in every model
  #       where you intend to leave this default
=======
>>>>>>> master
  def listable(scope)
    scope.ordered.limit(10)
  end
end
