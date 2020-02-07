class FieldServiceGroupsController < ApplicationController
  before_action :set_field_service_group, only: [:show, :edit, :update, :destroy]

  # GET /field_service_groups
  # GET /field_service_groups.json
  def index
    @field_service_groups = FieldServiceGroup.all
  end

  # GET /field_service_groups/1
  # GET /field_service_groups/1.json
  def show
  end

  # GET /field_service_groups/new
  def new
    @field_service_group = FieldServiceGroup.new
  end

  # GET /field_service_groups/1/edit
  def edit
  end

  # POST /field_service_groups
  # POST /field_service_groups.json
  def create
    @field_service_group = FieldServiceGroup.new(field_service_group_params)

    respond_to do |format|
      if @field_service_group.save
        format.html { redirect_to @field_service_group, notice: 'Field service group was successfully created.' }
        format.json { render :show, status: :created, location: @field_service_group }
      else
        format.html { render :new }
        format.json { render json: @field_service_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_service_groups/1
  # PATCH/PUT /field_service_groups/1.json
  def update
    respond_to do |format|
      if @field_service_group.update(field_service_group_params)
        format.html { redirect_to @field_service_group, notice: 'Field service group was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_service_group }
      else
        format.html { render :edit }
        format.json { render json: @field_service_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_service_groups/1
  # DELETE /field_service_groups/1.json
  def destroy
    @field_service_group.destroy
    respond_to do |format|
      format.html { redirect_to field_service_groups_url, notice: 'Field service group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_service_group
      @field_service_group = FieldServiceGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_service_group_params
      params.require(:field_service_group).permit(:name, :location)
    end
end
