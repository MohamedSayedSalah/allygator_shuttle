class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :destroy]
  protect_from_forgery with: :null_session
  include Response
  include ExceptionHandler
  # GET /vehicles
  def index
    @vehicles = Vehicle.all
    # render :json => @vehicles
  end

  # POST /vehicles
  def create
    puts "%%"
    puts params
    @vehicle = Vehicle.create!(id:params[:id])
    # json_response(@vehicle, :created)
  end


  def signup

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
