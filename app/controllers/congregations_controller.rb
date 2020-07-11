class CongregationsController < ApplicationController
  before_action :set_congregation, only: [:show, :edit, :update, :destroy]

  # GET /congregations
  # GET /congregations.json
  def index
    @congregations = Congregation.all
  end

  # GET /congregations/1
  # GET /congregations/1.json
  def show
  end

  # GET /congregations/new
  def new
    @congregation = Congregation.new
  end

  # GET /congregations/1/edit
  def edit
  end

  # POST /congregations
  # POST /congregations.json
  def create
    @congregation = Congregation.new(congregation_params)

    respond_to do |format|
      if @congregation.save
        format.html { redirect_to @congregation, notice: 'Congregation was successfully created.' }
        format.json { render :show, status: :created, location: @congregation }
      else
        format.html { render :new }
        format.json { render json: @congregation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congregations/1
  # PATCH/PUT /congregations/1.json
  def update
    respond_to do |format|
      if @congregation.update(congregation_params)
        format.html { redirect_to @congregation, notice: 'Congregation was successfully updated.' }
        format.json { render :show, status: :ok, location: @congregation }
      else
        format.html { render :edit }
        format.json { render json: @congregation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congregations/1
  # DELETE /congregations/1.json
  def destroy
    @congregation.destroy
    respond_to do |format|
      format.html { redirect_to congregations_url, notice: 'Congregation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congregation
      @congregation = Congregation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congregation_params
      params.require(:congregation).permit(:name, :congregation_number)
    end
end
