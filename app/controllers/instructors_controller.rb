class InstructorsController < ApplicationController
  before_action :user_page, only: [:show]

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
      render 'new'
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
      render 'edit'
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
  end

  private

  def user_page
    unless @current_user.admin?
      unless @current_user == Instructor.find(params[:id])
        flash[:error] = "Access denied."
        redirect_to home_path
      end
    end
  end

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :email, :password, :age, :education, :salary)
  end
end
