class UnitsController < ApplicationController

  def index
  end

  def new
    @property = Property.find(params[:property_id])
    @unit = Unit.new
  end

  def create
    @property = Property.find(params[:property_id])
    @unit = @property.units.build(unit_params)
    if @unit.save
      redirect_to property_unit_path(@property, @unit)
    else
      render :new
    end
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def unit_params
    params.require(:unit).permit(:name)
  end
end
