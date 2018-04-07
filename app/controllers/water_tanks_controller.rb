class WaterTanksController < ApplicationController
  before_action :set_water_tank, only: [:show, :edit, :update, :destroy]

  # GET /water_tanks
  # GET /water_tanks.json
  def index
    @water_tanks = WaterTank.all
    @hash = Gmaps4rails.build_markers(@water_tanks) do |tank, marker|
      marker.lat tank.latitude
      marker.lng tank.longitude
      marker.infowindow tank.nickname
    end
  end

  # GET /water_tanks/1
  # GET /water_tanks/1.json
  def show
  end

  # GET /water_tanks/new
  def new
    @water_tank = WaterTank.new
  end

  # GET /water_tanks/1/edit
  def edit
  end

  # POST /water_tanks
  # POST /water_tanks.json
  def create
    @water_tank = WaterTank.new(water_tank_params)

    respond_to do |format|
      if @water_tank.save
        format.html { redirect_to @water_tank, notice: 'Water tank was successfully created.' }
        format.json { render :show, status: :created, location: @water_tank }
      else
        format.html { render :new }
        format.json { render json: @water_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_tanks/1
  # PATCH/PUT /water_tanks/1.json
  def update
    respond_to do |format|
      if @water_tank.update(water_tank_params)
        format.html { redirect_to @water_tank, notice: 'Water tank was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_tank }
      else
        format.html { render :edit }
        format.json { render json: @water_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_tanks/1
  # DELETE /water_tanks/1.json
  def destroy
    @water_tank.destroy
    respond_to do |format|
      format.html { redirect_to water_tanks_url, notice: 'Water tank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_tank
      @water_tank = WaterTank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_tank_params
      params.require(:water_tank).permit(:latitude, :longitude, :nickname, :address, :neighborhood, :image)
    end
end
