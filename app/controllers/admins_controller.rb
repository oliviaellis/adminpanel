class AdminsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :superuser_check, only: [:index]

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def index
    @admin = Admin.all
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.valid?
      @admin.save
      log_in @admin
      redirect_to @admin
    else
      p @admin.errors
      p "Failed"
      render 'new'
    end
  end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(admin_params)
      redirect_to admin_path
    else
      redirect_to edit_admin_path(id: @admin.id)
    end
  end

  def destroy
    @admin = Admin.find(session[:user_id])
    log_out
    @admin.destroy
    redirect_to root_url
  end

  private

    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password, :avatar)
    end

    def superuser_check
      unless current_user == Admin.find_by(email: 'masterhand@smash.com')
        redirect_to admin_path
      end
    end
end
