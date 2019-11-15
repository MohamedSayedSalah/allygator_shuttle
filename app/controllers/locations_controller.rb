class LocationsController < ApplicationController

  before_action :set_vehicle
  before_action :set_vehicle_location, only: [:show, :destroy]

  # GET /vehicles/:id/locations
  def index
    json_response(@vehicle.locations)
  end

  # GET /vehicles/:id/locations/:id
  def show
    json_response(@item)
  end


  # POST /vehicles/:id/locations
  def create
    @vehicle.items.create!(location_params)
    json_response(@todo, :created)
  end


  # DELETE /vehicles/:id/locations/:id
  def destroy
    @location.destroy
    head :no_content
  end


  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def set_vehicle_location
    @item = @vehicle.locations.find_by!(id: params[:id]) if @vehicle
  end

end
