class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :set_raven_context
  include SessionsHelper

  private

  def require_login
    if session[:user_id] == nil
      p "Log in to access this page."
      redirect_to root_path
    end
  end

  def set_raven_context
    Raven.user_context(id: session[:user_id])
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end

end
