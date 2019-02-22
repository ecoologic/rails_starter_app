class AnswersController < AuthenticatedController
  # TODO: load_and_authorize_resource

  def create
    @answer = Answer.create(permitted_params)

    redirect_to_rank(@answer.persisted?)
  end

  def update
    @answer = Answer.find(params[:id])
    success = @answer.update(permitted_params)

    redirect_to_rank(success)
  end

  private

  def permitted_params
    params
      .require(:answer)
      .permit(:page_id, :question_id, :rating, :quote)
      .merge(creator: current_user)
  end

  def redirect_to_rank(success)
    redirect_to new_rank_path(rank: { page_id: @answer.page_id }),
                flash: flash_for(success)
  end
end
