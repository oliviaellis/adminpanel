class InstructorsController < ApplicationController
  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.valid?
      @instructor.save
      redirect_to @instructor
    else
      p @instructor.errors
      p "Failed"
      render 'new'
    end
  end

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :education, :salary)
  end
end
