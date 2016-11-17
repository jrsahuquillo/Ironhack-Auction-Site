class UsersController < ApplicationController

  def index
      @users = User.order(created_at: :desc).limit(10)
  end

  def show
    @user= User.find_by(id: params[:id])
    unless @user
      render "no_users_found"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      mail: params[:user][:mail])

    if @user.save
      redirect_to "/users/#{@user.id}" #Comillas dobles!!!!
    else
      render "/users/new"
    end
  end

  def destroy
  end

end
