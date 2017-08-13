class UserController < ApplicationController

  #find all users
  def index
    @user = User.all
    render json: @user
  end

  # create a new user object
  def create
    @user = User.new(user_params)
    @user.save!
    render json: @user
  end

  def show
  end

  def update
  end

  def delete
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :user_id)
    end
end
