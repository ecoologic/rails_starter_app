class RanksController < AuthenticatedController
  authorize_resource class: false

  def new
    @rank = Rank.new(permitted_params)
  end

  # def create # Each in AnswersController instead

  private

  def permitted_params
    params.require(:rank)
      .permit(:page_id)
      .merge(creator_id: current_user.id)
      .to_h.symbolize_keys
  end
end
