class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?
  
  protected
  def logged_in?
    session[:current_user_id].present?
    
  end
  
end
