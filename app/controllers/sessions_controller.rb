class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create_admin, :create_student, :create_instructor]

  def create_admin
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

  def create_student
    user = Student.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to student_url(id: user.id), notice: "Logged in!"
    else
      p "Email or password is invalid"
      redirect_to root_url
    end
  end

  def create_instructor
    user = Instructor.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to student_url(id: user.id), notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

  private

  # def current_user
  #   admin = Admin.find_by_email(params[:email])
  #   student = Student.find_by_email(params[:email])
  #   instructor = Instructor.find_by_email(params[:email])
  #   if admin != nil
  #     @current_user ||= admin
  #   elsif student != nil
  #     @current_user ||= student
  #   elsif instructor != nil
  #     @current_user ||= instructor
  #   end
  # end

end
