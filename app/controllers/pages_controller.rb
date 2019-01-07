class PagesController < ApplicationController
  skip_before_action :require_login
  before_action :logged_out, only: [:landing]

  def home
  end

  def landing
  end

  private

  def logged_out
    if session[:user_id] != nil
      redirect_to home_url
    end
  end
end
