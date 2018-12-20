class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.valid?
      @course.save
      redirect_to @course
    else
      p @course.errors
      p "Failed"
      render 'new'
    end
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end

end
