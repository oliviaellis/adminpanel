class PagesController < ApplicationController
  skip_before_action :require_login, only: [:home, :landing]

  def home
  end

  def landing
  end
end
