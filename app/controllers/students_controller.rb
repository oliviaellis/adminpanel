class StudentsController < ApplicationController
  before_action :admin_only
  before_action :user_page, only: [:show]

  def new
    @admin = Admin.find(params[:admin_id])
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to admin_student_path(id: @student.id)
    else
      p @student.errors
      p "Failed"
      render 'new'
    end
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:admin_id])
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to admin_student_path
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :age, :education)
  end

  def admin_only
    unless @current_user.admin?
      redirect_to :back, :alert => "Access denied"
    end
  end

  def user_page
    unless @current_user.admin?
      unless @current_user == Student.find(params[:id])
        flash[:error] = "Access denied."
        redirect_to home_path
      end
    end
  end

end
