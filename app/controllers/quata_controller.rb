class QuataController < ApplicationController
  before_action :set_quatum, only: [:show, :edit, :update, :destroy]

  # GET /quata
  # GET /quata.json
  def index
    @quata = Quatum.all
  end

  # GET /quata/1
  # GET /quata/1.json
  def show
  end

  # GET /quata/new
  def new
    @quatum = Quatum.new
  end

  # GET /quata/1/edit
  def edit
  end

  # POST /quata
  # POST /quata.json
  def create
    @quatum = Quatum.new(quatum_params)

    respond_to do |format|
      if @quatum.save
        format.html { redirect_to @quatum, notice: 'Quatum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quatum }
      else
        format.html { render action: 'new' }
        format.json { render json: @quatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quata/1
  # PATCH/PUT /quata/1.json
  def update
    respond_to do |format|
      if @quatum.update(quatum_params)
        format.html { redirect_to @quatum, notice: 'Quatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quata/1
  # DELETE /quata/1.json
  def destroy
    @quatum.destroy
    respond_to do |format|
      format.html { redirect_to quata_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quatum
      @quatum = Quatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quatum_params
      params.require(:quatum).permit(:service_request_id, :user_id, :amount, :duration, :when, :state)
    end
end
