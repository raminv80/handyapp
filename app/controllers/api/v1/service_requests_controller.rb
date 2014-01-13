class Api::V1::ServiceRequestsController < Api::V1::ApiController
  before_action :set_service_request, only: [:show, :edit, :update, :destroy]

  def index
    @service_requests = ServiceRequest.all
  end

  def show
  end

  def new
    @service_request = ServiceRequest.new
  end

  def edit
  end

  def create
    @service_request = ServiceRequest.new(service_request_params)
    respond_to do |format|
      if @service_request.save
        format.html { redirect_to @service_request, notice: 'Service request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_request }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @service_request.update(service_request_params)
        format.html { redirect_to @service_request, notice: 'Service request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service_request.destroy
    respond_to do |format|
      format.html { redirect_to service_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_request
      @service_request = ServiceRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_request_params
      params.require(:service_request).permit(:geolat, :geolng, :address, :desc, :title, :state)
    end
end