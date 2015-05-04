class MonitorClassMappingsController < ApplicationController
  before_action :set_monitor_class_mapping, only: [:show, :edit, :update, :destroy]

  # GET /monitor_class_mappings
  # GET /monitor_class_mappings.json
  def index
    @monitor_class_mappings = MonitorClassMapping.all
  end

  # GET /monitor_class_mappings/1
  # GET /monitor_class_mappings/1.json
  def show
  end

  # GET /monitor_class_mappings/new
  def new
    @monitor_class_mapping = MonitorClassMapping.new
  end

  # GET /monitor_class_mappings/1/edit
  def edit
  end

  # POST /monitor_class_mappings
  # POST /monitor_class_mappings.json
  def create
    @monitor_class_mapping = MonitorClassMapping.new(monitor_class_mapping_params)

    respond_to do |format|
      if @monitor_class_mapping.save
        format.html { redirect_to @monitor_class_mapping, notice: 'Monitor class mapping was successfully created.' }
        format.json { render :show, status: :created, location: @monitor_class_mapping }
      else
        format.html { render :new }
        format.json { render json: @monitor_class_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitor_class_mappings/1
  # PATCH/PUT /monitor_class_mappings/1.json
  def update
    respond_to do |format|
      if @monitor_class_mapping.update(monitor_class_mapping_params)
        format.html { redirect_to @monitor_class_mapping, notice: 'Monitor class mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitor_class_mapping }
      else
        format.html { render :edit }
        format.json { render json: @monitor_class_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitor_class_mappings/1
  # DELETE /monitor_class_mappings/1.json
  def destroy
    @monitor_class_mapping.destroy
    respond_to do |format|
      format.html { redirect_to monitor_class_mappings_url, notice: 'Monitor class mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitor_class_mapping
      @monitor_class_mapping = MonitorClassMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitor_class_mapping_params
      params.require(:monitor_class_mapping).permit(:class_name, :sub_string)
    end
end
