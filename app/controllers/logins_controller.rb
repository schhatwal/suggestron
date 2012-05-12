class LoginsController < ApplicationController
  def create
    @user = User.login(params[:username], params[:password])
    if @user
      #success
      session[:current_user_id] = @user.id
      flash[:notice] = "Logged in!"
      redirect_to root_path
    else
      #fail
      flash[:alert] = "Username password combo not found!"
      redirect_to new_login_path
    end
  end

  def new
  end

  def destroy
    #logout
    session[:current_user_id] = nil
    redirect_to new_login_path
    flash[:notice] = "Logged out!"
  end
end
