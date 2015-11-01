class BirthTypesController < ApplicationController
  before_action :set_birth_type, only: [:show, :edit, :update, :destroy]

  # GET /birth_types
  # GET /birth_types.json
  def index
    @birth_types = BirthType.all
  end

  # GET /birth_types/1
  # GET /birth_types/1.json
  def show
  end

  # GET /birth_types/new
  def new
    @birth_type = BirthType.new
  end

  # GET /birth_types/1/edit
  def edit
  end

  # POST /birth_types
  # POST /birth_types.json
  def create
    @birth_type = BirthType.new(birth_type_params)

    respond_to do |format|
      if @birth_type.save
        format.html { redirect_to @birth_type, notice: 'Birth type was successfully created.' }
        format.json { render :show, status: :created, location: @birth_type }
      else
        format.html { render :new }
        format.json { render json: @birth_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /birth_types/1
  # PATCH/PUT /birth_types/1.json
  def update
    respond_to do |format|
      if @birth_type.update(birth_type_params)
        format.html { redirect_to @birth_type, notice: 'Birth type was successfully updated.' }
        format.json { render :show, status: :ok, location: @birth_type }
      else
        format.html { render :edit }
        format.json { render json: @birth_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birth_types/1
  # DELETE /birth_types/1.json
  def destroy
    @birth_type.destroy
    respond_to do |format|
      format.html { redirect_to birth_types_url, notice: 'Birth type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birth_type
      @birth_type = BirthType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def birth_type_params
      params.require(:birth_type).permit(:name)
    end
end
