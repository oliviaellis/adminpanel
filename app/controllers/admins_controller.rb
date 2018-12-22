class AdminsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.valid?
      @admin.save
      redirect_to @admin
    else
      p @admin.errors
      p "Failed"
      render 'new'
    end
  end

  def home
    @admin = Admin.find(session[:user_id])
  end

  def update

  end

  def destroy

  end

  private
    def set_admin
      @admin = Admin.find(params[:id])
    end

    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end
end
