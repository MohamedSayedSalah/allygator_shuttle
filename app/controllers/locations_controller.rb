class LocationsController < ApplicationController

  before_action :set_vehicle
  before_action :set_vehicle_location, only: [:show, :destroy]
  protect_from_forgery with: :null_session

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
    @location =  Location.create!(lng: params[:location][:lng],
    lat: params[:location][:lat],
    at: params[:location][:at],
    vehicle: @vehicle)
    LastLocation.where(vehicle:@vehicle).first_or_create(:lng => @location.lng , :lat => @location.lat , :at => @location.at , :vehicle => @vehicle)
        .update(:lng => @location.lng , :lat => @location.lat , :at => @location.at )


    # json_response(@location, :created)
  end


  # DELETE /vehicles/:id/locations/:id
  def destroy
    @location.destroy
    head :no_content
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def set_vehicle_location
    @item = @vehicle.locations.find_by!(id: params[:id]) if @vehicle
  end

end
