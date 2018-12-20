class CohortsController < ApplicationController
  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.valid?
      @cohort.save
      redirect_to @cohort
    else
      p @cohort.errors
      p "Failed"
      render 'new'
    end
  end

  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update_attributes(cohort_params)
      redirect_to @cohort
    else
      render 'edit'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
  end

  def remove_student_from_cohort
    cohort = Cohort.find(params[:id])
    student = cohort.students.find(params[:student_id])
    if student
      cohort.students.delete(student)
    end
  end


  private

  def cohort_params
    params.require(:cohort).permit(:name, :start, :end, student_ids:[])
  end

end
