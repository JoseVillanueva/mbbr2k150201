class ChildDevelopmentPeriodsController < ApplicationController
  before_action :set_child_development_period, only: [:show, :edit, :update, :destroy]

  # GET /child_development_periods
  # GET /child_development_periods.json
  def index
    @child_development_periods = ChildDevelopmentPeriod.all
  end

  # GET /child_development_periods/1
  # GET /child_development_periods/1.json
  def show
  end

  # GET /child_development_periods/new
  def new
    @child_development_period = ChildDevelopmentPeriod.new
  end

  # GET /child_development_periods/1/edit
  def edit
  end

  # POST /child_development_periods
  # POST /child_development_periods.json
  def create
    @child_development_period = ChildDevelopmentPeriod.new(child_development_period_params)

    respond_to do |format|
      if @child_development_period.save
        format.html { redirect_to @child_development_period, notice: 'Child development period was successfully created.' }
        format.json { render :show, status: :created, location: @child_development_period }
      else
        format.html { render :new }
        format.json { render json: @child_development_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_development_periods/1
  # PATCH/PUT /child_development_periods/1.json
  def update
    respond_to do |format|
      if @child_development_period.update(child_development_period_params)
        format.html { redirect_to @child_development_period, notice: 'Child development period was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_development_period }
      else
        format.html { render :edit }
        format.json { render json: @child_development_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_development_periods/1
  # DELETE /child_development_periods/1.json
  def destroy
    @child_development_period.destroy
    respond_to do |format|
      format.html { redirect_to child_development_periods_url, notice: 'Child development period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_development_period
      @child_development_period = ChildDevelopmentPeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_development_period_params
      params.require(:child_development_period).permit(:date_contol, :weight, :size, :head_circunference, :child_id, :child_development_id, :medical_center_id, :doctor_id)
    end
end
