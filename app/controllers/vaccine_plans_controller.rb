class VaccinePlansController < ApplicationController
  before_action :set_vaccine_plan, only: [:show, :edit, :update, :destroy]

  # GET /vaccine_plans
  # GET /vaccine_plans.json
  def index
    @vaccine_plans = VaccinePlan.all
  end

  # GET /vaccine_plans/1
  # GET /vaccine_plans/1.json
  def show
  end

  # GET /vaccine_plans/new
  def new
    @vaccine_plan = VaccinePlan.new
  end

  # GET /vaccine_plans/1/edit
  def edit
  end

  # POST /vaccine_plans
  # POST /vaccine_plans.json
  def create
    @vaccine_plan = VaccinePlan.new(vaccine_plan_params)

    respond_to do |format|
      if @vaccine_plan.save
        format.html { redirect_to @vaccine_plan, notice: 'Vaccine plan was successfully created.' }
        format.json { render :show, status: :created, location: @vaccine_plan }
      else
        format.html { render :new }
        format.json { render json: @vaccine_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaccine_plans/1
  # PATCH/PUT /vaccine_plans/1.json
  def update
    respond_to do |format|
      if @vaccine_plan.update(vaccine_plan_params)
        format.html { redirect_to @vaccine_plan, notice: 'Vaccine plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaccine_plan }
      else
        format.html { render :edit }
        format.json { render json: @vaccine_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccine_plans/1
  # DELETE /vaccine_plans/1.json
  def destroy
    @vaccine_plan.destroy
    respond_to do |format|
      format.html { redirect_to vaccine_plans_url, notice: 'Vaccine plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccine_plan
      @vaccine_plan = VaccinePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaccine_plan_params
      params.require(:vaccine_plan).permit(:nmes, :vaccine_id)
    end
end
