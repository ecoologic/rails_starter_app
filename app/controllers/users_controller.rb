class UsersController < AuthenticatedController
  load_and_authorize_resource

  def index
    @users = listable(@users)
  end

  def update
    if @user.update(user_params)
      flash.now[:notice] = "Updated"
    else
      flash.now[:alert] = "Not updated"
    end

    render :edit
  end

  def show
    @title_prefix = @user
  end

  def edit
    @title_prefix = "#{@user} Edit"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy!
    redirect_to users_url, notice: "#{user} Destroyed"
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:private_notes)
  end
end
