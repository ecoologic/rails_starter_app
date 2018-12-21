class UsersController < ApplicationController
  load_and_authorize_resource

  # def index

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Updated'
    else
      render :edit
    end
  end

  # def show
  # def edit

  def destroy
    user = User.find(params[:id])
    user.destroy!
    redirect_to users_url, notice: "#{user} Destroyed"
  end

  private

  def user_params
    params.fetch(:user, {})
  end
end
