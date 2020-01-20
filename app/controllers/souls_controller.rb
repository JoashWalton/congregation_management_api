class SoulsController < ApplicationController
  swagger_controller :souls, "Soul Management"

  before_action :set_soul, only: [:show, :edit, :update, :destroy]

  # GET /souls
  # GET /souls.json
  swagger_api :index do
    summary "Fetches all Souls"
    notes "This lists all the active souls"
    param :query, :page, :integer, :optional, "Page number"
    param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "The request you made is not acceptable"
    response :requested_range_not_satisfiable
  end

  def index
    @souls = Soul.all
  end

  # GET /souls/1
  # GET /souls/1.json
  swagger_api :show do
    summary "Fetches a single Soul"
    param :path, :id, :integer, :optional, "Soul Id"
    response :ok, "Success", :Soul
    response :unauthorized
    response :not_acceptable
    response :not_found
  end

  def show
  end

  # GET /souls/new
  def new
    @soul = Soul.new
  end

  # GET /souls/1/edit
  def edit
  end

  # POST /souls
  # POST /souls.json
  swagger_api :create do
    summary "Creates a new Soul"
    param :form, :first_name, :string, :required, "First name"
    param :form, :last_name, :string, :required, "Last name"
    param :form, :email, :string, :required, "Email address"
    param_list :form, :role, :string, :required, "Role", [ "admin", "superadmin", "user" ]
    response :unauthorized
    response :not_acceptable
  end

  def create
    @soul = Soul.new(soul_params)

    respond_to do |format|
      if @soul.save
        format.html { redirect_to @soul, notice: 'Soul was successfully created.' }
        format.json { render :show, status: :created, location: @soul }
      else
        format.html { render :new }
        format.json { render json: @soul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /souls/1
  # PATCH/PUT /souls/1.json
  swagger_api :update do
    summary "Updates an existing Soul"
    param :path, :id, :integer, :required, "Soul Id"
    param :form, :first_name, :string, :optional, "First name"
    param :form, :last_name, :string, :optional, "Last name"
    param :form, :email, :string, :optional, "Email address"
    param :form, :tag, :Tag, :required, "Tag object"
    response :unauthorized
    response :not_found
    response :not_acceptable
  end

  def update
    respond_to do |format|
      if @soul.update(soul_params)
        format.html { redirect_to @soul, notice: 'Soul was successfully updated.' }
        format.json { render :show, status: :ok, location: @soul }
      else
        format.html { render :edit }
        format.json { render json: @soul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /souls/1
  # DELETE /souls/1.json
  swagger_api :destroy do
    summary "Deletes an existing Soul"
    param :path, :id, :integer, :optional, "Soul Id"
    response :unauthorized
    response :not_found
  end

  def destroy
    @soul.destroy
    respond_to do |format|
      format.html { redirect_to souls_url, notice: 'Soul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soul
      @soul = Soul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soul_params
      params.require(:soul).permit(:first_name, :middle_name, :last_name, :birth_date, :gender)
    end
end
