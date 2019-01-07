class InstructorsController < ApplicationController
  def new
    @admin = Admin.find(params[:admin_id])
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.valid?
      @instructor.save
      redirect_to admin_instructor_path(id: @instructor.id)
    else
      p @instructor.errors
      p "Failed"
      redirect_to new_admin_instructor_path
    end
  end

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:admin_id])
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update_attributes(instructor_params)
      redirect_to admin_instructor_path
    else
      redirect_to edit_admin_instructor_path(id: @instructor.id)
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :email, :age, :education, :salary, :avatar)
  end
end
