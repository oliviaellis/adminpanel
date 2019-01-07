class SessionsController < ApplicationController
  skip_before_action :require_login

  def create
    user = Admin.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to home_url
    else
      flash[:alert] = "Incorrect email or password"
      redirect_to root_url
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
