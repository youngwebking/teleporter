class UsersController < ApplicationController
  before_action :set_user, only: [:show,:edit,:update,:destroy]

  def show
    respond_to do |format|
      format.html
      format.json {render :json => @user}
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    #@user = User.find_by(uuid: current_user.uuid)
    new_user_params = params.require(:user).permit(:uuid,:email,:password,:password_confirmation)
    @user = User.new(new_user_params)
    #@user.update(new_user_params)
    #@user.role = roles.last
    
    if @user.save
      sign_in @user
      flash[:success] = "Your account has been created successfully."
      redirect_to @user
    else
      render "new"
    end
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
