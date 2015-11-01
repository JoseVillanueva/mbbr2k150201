class ChildDevelopmentsController < ApplicationController
  before_action :set_child_development, only: [:show, :edit, :update, :destroy]

  # GET /child_developments
  # GET /child_developments.json
  def index
    @child_developments = ChildDevelopment.all
  end

  # GET /child_developments/1
  # GET /child_developments/1.json
  def show
  end

  # GET /child_developments/new
  def new
    @child_development = ChildDevelopment.new
  end

  # GET /child_developments/1/edit
  def edit
  end

  # POST /child_developments
  # POST /child_developments.json
  def create
    @child_development = ChildDevelopment.new(child_development_params)

    respond_to do |format|
      if @child_development.save
        format.html { redirect_to @child_development, notice: 'Child development was successfully created.' }
        format.json { render :show, status: :created, location: @child_development }
      else
        format.html { render :new }
        format.json { render json: @child_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_developments/1
  # PATCH/PUT /child_developments/1.json
  def update
    respond_to do |format|
      if @child_development.update(child_development_params)
        format.html { redirect_to @child_development, notice: 'Child development was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_development }
      else
        format.html { render :edit }
        format.json { render json: @child_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_developments/1
  # DELETE /child_developments/1.json
  def destroy
    @child_development.destroy
    respond_to do |format|
      format.html { redirect_to child_developments_url, notice: 'Child development was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_development
      @child_development = ChildDevelopment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_development_params
      params.require(:child_development).permit(:name, :months)
    end
end
