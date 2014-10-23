class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  
  def sign_in(user)
    session[:user_id] = user.id
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user
    current_user ||= User.find_by(id: session[:user_id])
  end
  
  def sign_out
    session[:user_id] = nil
  end
end
