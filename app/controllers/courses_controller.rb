class CoursesController < ApplicationController
  def new
    @admin = Admin.find(params[:admin_id])
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.valid?
      @course.save
      redirect_to admin_course_path(id: @course.id)
    else
      p @course.errors
      p "Failed"
      redirect_to new_admin_course_path
    end
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:admin_id])
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      redirect_to admin_course_path
    else
      redirect_to edit_admin_course_path(id: @course.id)
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
  end


  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end

end
