class TenantsController < ApplicationController

  def new
  end

  def create
  end

  def show
    #  @current_tenant = Tenant.find(1)
        @current_tenant = Tenant.find(params[:id])
        @landlord = Landlord.find(@current_tenant.user_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
