# Extend all your Controllers from here
class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  # Prepare for listing on a page (eg: table/ul/li)
  def listable(scope)
    scope.ordered.limit(10)
  end

  def flash_for(success)
    success ? { notice: "Saved" } : { alert: "Not Saved" }
  end

  # def permitted_page
  #   Page.find(permitted_params[:page_id])
  # end
  #
  # def permitted_question
  #   Question.find(permitted_params[:question_id])
  # end
end
