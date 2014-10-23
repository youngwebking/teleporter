class UsersController < ApplicationController
  before_action :set_user, only: [:show,:create,:edit,:update,:destroy]

  def show
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:uuid,:email,:password_digest))
  end

  def edit
  end
  
  def update
  end
  
  def destroy
    
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end
