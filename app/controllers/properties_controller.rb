class PropertiesController < ApplicationController

  def index
    @landlord = current_user.role
    @properties = @landlord.properties
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.landlord = current_user.role
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  private

  def property_params
     params.require(:property).permit(:address_1, :address_2, :city, :state, :single_family)
  end
end
