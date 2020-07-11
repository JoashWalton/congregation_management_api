class KingdomHallsController < ApplicationController
  before_action :set_kingdom_hall, only: [:show, :edit, :update, :destroy]

  # GET /kingdom_halls
  # GET /kingdom_halls.json
  def index
    @kingdom_halls = KingdomHall.all
  end

  # GET /kingdom_halls/1
  # GET /kingdom_halls/1.json
  def show
  end

  # GET /kingdom_halls/new
  def new
    @kingdom_hall = KingdomHall.new
  end

  # GET /kingdom_halls/1/edit
  def edit
  end

  # POST /kingdom_halls
  # POST /kingdom_halls.json
  def create
    @kingdom_hall = KingdomHall.new(kingdom_hall_params)

    respond_to do |format|
      if @kingdom_hall.save
        format.html { redirect_to @kingdom_hall, notice: 'Kingdom hall was successfully created.' }
        format.json { render :show, status: :created, location: @kingdom_hall }
      else
        format.html { render :new }
        format.json { render json: @kingdom_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kingdom_halls/1
  # PATCH/PUT /kingdom_halls/1.json
  def update
    respond_to do |format|
      if @kingdom_hall.update(kingdom_hall_params)
        format.html { redirect_to @kingdom_hall, notice: 'Kingdom hall was successfully updated.' }
        format.json { render :show, status: :ok, location: @kingdom_hall }
      else
        format.html { render :edit }
        format.json { render json: @kingdom_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kingdom_halls/1
  # DELETE /kingdom_halls/1.json
  def destroy
    @kingdom_hall.destroy
    respond_to do |format|
      format.html { redirect_to kingdom_halls_url, notice: 'Kingdom hall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kingdom_hall
      @kingdom_hall = KingdomHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kingdom_hall_params
      params.require(:kingdom_hall).permit(:address, :auditorium_count)
    end
end
