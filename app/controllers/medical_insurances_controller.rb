class MedicalInsurancesController < ApplicationController
  before_action :set_medical_insurance, only: [:show, :edit, :update, :destroy]

  # GET /medical_insurances
  # GET /medical_insurances.json
  def index
    @medical_insurances = MedicalInsurance.all
  end

  # GET /medical_insurances/1
  # GET /medical_insurances/1.json
  def show
  end

  # GET /medical_insurances/new
  def new
    @medical_insurance = MedicalInsurance.new
  end

  # GET /medical_insurances/1/edit
  def edit
  end

  # POST /medical_insurances
  # POST /medical_insurances.json
  def create
    @medical_insurance = MedicalInsurance.new(medical_insurance_params)

    respond_to do |format|
      if @medical_insurance.save
        format.html { redirect_to @medical_insurance, notice: 'Medical insurance was successfully created.' }
        format.json { render :show, status: :created, location: @medical_insurance }
      else
        format.html { render :new }
        format.json { render json: @medical_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_insurances/1
  # PATCH/PUT /medical_insurances/1.json
  def update
    respond_to do |format|
      if @medical_insurance.update(medical_insurance_params)
        format.html { redirect_to @medical_insurance, notice: 'Medical insurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_insurance }
      else
        format.html { render :edit }
        format.json { render json: @medical_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_insurances/1
  # DELETE /medical_insurances/1.json
  def destroy
    @medical_insurance.destroy
    respond_to do |format|
      format.html { redirect_to medical_insurances_url, notice: 'Medical insurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_insurance
      @medical_insurance = MedicalInsurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_insurance_params
      params.require(:medical_insurance).permit(:nom_seguro, :name, :tax_identification, :address, :website, :email)
    end
end
