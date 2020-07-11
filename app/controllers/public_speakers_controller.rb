class PublicSpeakersController < ApplicationController
  before_action :set_public_speaker, only: [:show, :edit, :update, :destroy]

  # GET /public_speakers
  # GET /public_speakers.json
  def index
    @public_speakers = PublicSpeaker.all
  end

  # GET /public_speakers/1
  # GET /public_speakers/1.json
  def show
  end

  # GET /public_speakers/new
  def new
    @public_speaker = PublicSpeaker.new
  end

  # GET /public_speakers/1/edit
  def edit
  end

  # POST /public_speakers
  # POST /public_speakers.json
  def create
    @public_speaker = PublicSpeaker.new(public_speaker_params)

    respond_to do |format|
      if @public_speaker.save
        format.html { redirect_to @public_speaker, notice: 'Public speaker was successfully created.' }
        format.json { render :show, status: :created, location: @public_speaker }
      else
        format.html { render :new }
        format.json { render json: @public_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_speakers/1
  # PATCH/PUT /public_speakers/1.json
  def update
    respond_to do |format|
      if @public_speaker.update(public_speaker_params)
        format.html { redirect_to @public_speaker, notice: 'Public speaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_speaker }
      else
        format.html { render :edit }
        format.json { render json: @public_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_speakers/1
  # DELETE /public_speakers/1.json
  def destroy
    @public_speaker.destroy
    respond_to do |format|
      format.html { redirect_to public_speakers_url, notice: 'Public speaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_speaker
      @public_speaker = PublicSpeaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_speaker_params
      params.fetch(:public_speaker, {})
    end
end
