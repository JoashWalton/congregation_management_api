class PublicTalksController < ApplicationController
  before_action :set_public_talk, only: [:show, :edit, :update, :destroy]

  # GET /public_talks
  # GET /public_talks.json
  def index
    @public_talks = PublicTalk.all
  end

  # GET /public_talks/1
  # GET /public_talks/1.json
  def show
  end

  # GET /public_talks/new
  def new
    @public_talk = PublicTalk.new
  end

  # GET /public_talks/1/edit
  def edit
  end

  # POST /public_talks
  # POST /public_talks.json
  def create
    @public_talk = PublicTalk.new(public_talk_params)

    respond_to do |format|
      if @public_talk.save
        format.html { redirect_to @public_talk, notice: 'Public talk was successfully created.' }
        format.json { render :show, status: :created, location: @public_talk }
      else
        format.html { render :new }
        format.json { render json: @public_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_talks/1
  # PATCH/PUT /public_talks/1.json
  def update
    respond_to do |format|
      if @public_talk.update(public_talk_params)
        format.html { redirect_to @public_talk, notice: 'Public talk was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_talk }
      else
        format.html { render :edit }
        format.json { render json: @public_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_talks/1
  # DELETE /public_talks/1.json
  def destroy
    @public_talk.destroy
    respond_to do |format|
      format.html { redirect_to public_talks_url, notice: 'Public talk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_talk
      @public_talk = PublicTalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_talk_params
      params.require(:public_talk).permit(:public_talk_number, :public_talk_title, :public_talk_subject)
    end
end
