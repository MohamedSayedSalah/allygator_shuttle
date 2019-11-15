class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :destroy]
  
  include Response
  include ExceptionHandler
  # GET /vehicles
  def index
    @vehicle = Vehicle.all
    json_response(@vehicle)
  end

  # POST /vehicles
  def create
    puts "##"
    puts params[:vehicle]
    # @vehicle = Vehicle.create!(params)
    # json_response(@vehicle, :created)
  end

  # GET /vehicles/:id
  def show
    json_response(@vehicle)
  end

  # DELETE /vehicles/:id
  def destroy
    @vehicle.destroy
    head :no_content
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

end
