class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?, :current_user
  
  protected
  def current_user
    @current_user ||= User.find_by_id(session[:current_user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
end
