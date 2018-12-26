class StudentsController < ApplicationController
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
    params.require(:student).permit(:first_name, :last_name, :email, :age, :education)
  end

end
