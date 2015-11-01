class VaccineChildrenController < ApplicationController
  before_action :set_vaccine_child, only: [:show, :edit, :update, :destroy]

  # GET /vaccine_children
  # GET /vaccine_children.json
  def index
    @vaccine_children = VaccineChild.all
  end

  # GET /vaccine_children/1
  # GET /vaccine_children/1.json
  def show
  end

  # GET /vaccine_children/new
  def new
    @vaccine_child = VaccineChild.new
  end

  # GET /vaccine_children/1/edit
  def edit
  end

  # POST /vaccine_children
  # POST /vaccine_children.json
  def create
    @vaccine_child = VaccineChild.new(vaccine_child_params)

    respond_to do |format|
      if @vaccine_child.save
        format.html { redirect_to @vaccine_child, notice: 'Vaccine child was successfully created.' }
        format.json { render :show, status: :created, location: @vaccine_child }
      else
        format.html { render :new }
        format.json { render json: @vaccine_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaccine_children/1
  # PATCH/PUT /vaccine_children/1.json
  def update
    respond_to do |format|
      if @vaccine_child.update(vaccine_child_params)
        format.html { redirect_to @vaccine_child, notice: 'Vaccine child was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaccine_child }
      else
        format.html { render :edit }
        format.json { render json: @vaccine_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccine_children/1
  # DELETE /vaccine_children/1.json
  def destroy
    @vaccine_child.destroy
    respond_to do |format|
      format.html { redirect_to vaccine_children_url, notice: 'Vaccine child was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccine_child
      @vaccine_child = VaccineChild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaccine_child_params
      params.require(:vaccine_child).permit(:date_suggested, :date_register, :dosis_vacune, :status, :weight_picture, :height_picture, :type_picture, :picture, :Medical_center_id, :Vaccine_plan_id, :Child_id)
    end
end
