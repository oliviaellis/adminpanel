class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to @student
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

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end

end
