class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def require_login
    if session[:user_id] == nil
      p "LOGIN FAILED"
      redirect_to root_path
    end
  end

  def current_user
    admin = Admin.find_by_email(params[:email])
    student = Student.find_by_email(params[:email])
    instructor = Instructor.find_by_email(params[:email])
    if admin != nil
      @current_user ||= admin
    elsif student != nil
      @current_user ||= student
    elsif instructor != nil
      @current_user ||= instructor
    end
  end


end
