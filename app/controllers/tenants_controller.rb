class TenantsController < ApplicationController

  def new
  end

  def create
  end

  def show
    @tenant = Tenant.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
