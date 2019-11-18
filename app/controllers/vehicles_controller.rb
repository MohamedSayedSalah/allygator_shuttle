class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :destroy]
  protect_from_forgery with: :null_session
  # before_destroy :destroy_locations
  include Response
  include ExceptionHandler
  # GET /vehicles
  def index
    @vehicles = Vehicle.all
    # render :json => @vehicles
  end

  # POST /vehicles
  def create
    @vehicle = Vehicle.find_or_create_by!(id:params[:id])
    # json_response(@vehicle, :created)
  end

  def last_location
    @vehicles_last_location = {}
    LastLocation.all.map{|location| @vehicles_last_location[location.vehicle_id] =  {lat: location.lat , lng: location.lng} }
   render :json => @vehicles_last_location

  end

  # DELETE /vehicles/:id
  def destroy
    @vehicle.locations.destroy_all
    @vehicle.destroy
    head :no_content
  end
  def destroy_all
    Vehicle.destroy_all
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  # def destroy_locations
  #   self.locations.destroy_all
  # end
end
