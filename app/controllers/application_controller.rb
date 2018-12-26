class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def require_login
    if session[:user_id] == nil
      p "Log in to access this page."
      redirect_to root_path
    end
  end

end
