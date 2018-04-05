class WaterTankLocationsController < ApplicationController
  before_action :set_water_tank_location, only: [:show, :edit, :update, :destroy]

  # GET /water_tank_locations
  # GET /water_tank_locations.json
  def index
    @water_tank_locations = WaterTankLocation.all
  end

  # GET /water_tank_locations/1
  # GET /water_tank_locations/1.json
  def show
  end

  # GET /water_tank_locations/new
  def new
    @water_tank_location = WaterTankLocation.new
  end

  # GET /water_tank_locations/1/edit
  def edit
  end

  # POST /water_tank_locations
  # POST /water_tank_locations.json
  def create
    @water_tank_location = WaterTankLocation.new(water_tank_location_params)

    respond_to do |format|
      if @water_tank_location.save
        format.html { redirect_to @water_tank_location, notice: 'Water tank location was successfully created.' }
        format.json { render :show, status: :created, location: @water_tank_location }
      else
        format.html { render :new }
        format.json { render json: @water_tank_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_tank_locations/1
  # PATCH/PUT /water_tank_locations/1.json
  def update
    respond_to do |format|
      if @water_tank_location.update(water_tank_location_params)
        format.html { redirect_to @water_tank_location, notice: 'Water tank location was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_tank_location }
      else
        format.html { render :edit }
        format.json { render json: @water_tank_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_tank_locations/1
  # DELETE /water_tank_locations/1.json
  def destroy
    @water_tank_location.destroy
    respond_to do |format|
      format.html { redirect_to water_tank_locations_url, notice: 'Water tank location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_tank_location
      @water_tank_location = WaterTankLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_tank_location_params
      params.require(:water_tank_location).permit(:latitude, :longitude, :info)
    end
end
