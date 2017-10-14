class UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]
  #find all users
  def index
    @users = User.all
    render json: @users
  end

  # create a new user object
  def create
    @user = User.new(user_params)
    if @user.save!
      render json: @user
    else
      render json: @user.errors
    end
  end

  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors
    end
  end

  def destroy
    @user.destroy
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :name)
  end
end
