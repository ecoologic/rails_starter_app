class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Updated'
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy!
    redirect_to users_url, notice: 'Destroyed'
  end

  private

  def user_params
    params.fetch(:user, {})
  end
end
