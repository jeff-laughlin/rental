class LandlordsController < ApplicationController

  def new
  end

  def create
  end

  # /landlords/:id
  #
  def show
    @landlord = Landlord.find(params[:id])
    @properties = @landlord.properties
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
