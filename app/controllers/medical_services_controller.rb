class MedicalServicesController < ApplicationController
  before_action :set_medical_service, only: [:show, :edit, :update, :destroy]

  # GET /medical_services
  # GET /medical_services.json
  def index
    @medical_services = MedicalService.all
  end

  # GET /medical_services/1
  # GET /medical_services/1.json
  def show
  end

  # GET /medical_services/new
  def new
    @medical_service = MedicalService.new
  end

  # GET /medical_services/1/edit
  def edit
  end

  # POST /medical_services
  # POST /medical_services.json
  def create
    @medical_service = MedicalService.new(medical_service_params)

    respond_to do |format|
      if @medical_service.save
        format.html { redirect_to @medical_service, notice: 'Medical service was successfully created.' }
        format.json { render :show, status: :created, location: @medical_service }
      else
        format.html { render :new }
        format.json { render json: @medical_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_services/1
  # PATCH/PUT /medical_services/1.json
  def update
    respond_to do |format|
      if @medical_service.update(medical_service_params)
        format.html { redirect_to @medical_service, notice: 'Medical service was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_service }
      else
        format.html { render :edit }
        format.json { render json: @medical_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_services/1
  # DELETE /medical_services/1.json
  def destroy
    @medical_service.destroy
    respond_to do |format|
      format.html { redirect_to medical_services_url, notice: 'Medical service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_service
      @medical_service = MedicalService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_service_params
      params.require(:medical_service).permit(:pet_name, :pet_type, :size, :description)
    end
end
