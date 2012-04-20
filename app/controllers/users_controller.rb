class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id].to_i)
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "You've successfully signed up!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
