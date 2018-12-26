class SessionsController < ApplicationController
  skip_before_action :require_login
  
  def create
    user = Admin.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      p "Logged in"
      redirect_to home_url
    else
      p "Login failed"
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end
