class AdminsController < ApplicationController
  skip_before_action :require_login!, only: [:create]
  before_action :set_admin, only: [:show, :update, :destroy]

  # GET /admins
  def index
    @admins = Admin.all
    json_response(@admins)
  end

  # POST /admins
  def create
    @admin = Admin.create!(admin_params)
    json_response(@admin, :created)
  end

  # GET /admins/:id
  def show
    json_response(@admin)
  end

  # PUT /admins/:id
  def update
    @admin.update(admin_params)
    head :no_content
  end

  # DELETE /admins/:id
  def destroy
    @admin.destroy
    head :no_content
  end

  private
    def admin_params
      params.require(:admin).permit( :email,
                                    :password,
                                    :password_confirmation,
                                    :name,
                                    :lastname,
                                    :phone,
                                    :active_user )
    end

    def set_admin
      @admin = Admin.find(params[:id])
    end

end
