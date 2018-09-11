class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    byebug
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to @user
  end

  def friends
    @friends = self.friends

    render :friends
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age)
  end

end
