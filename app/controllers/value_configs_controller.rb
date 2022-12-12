class ValueConfigsController < ApplicationController
  before_action :set_value_config, only: %i[ show update destroy ]

  # GET /value_configs
  def index
    @value_configs = ValueConfig.all

    render json: @value_configs
  end

  # GET /value_configs/1
  def show
    render json: @value_config
  end

  # POST /value_configs
  def create
    @value_config = ValueConfig.new(value_config_params)

    if @value_config.save
      render json: @value_config, status: :created, location: @value_config
    else
      render json: @value_config.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /value_configs/1
  def update
    if @value_config.update(value_config_params)
      render json: @value_config
    else
      render json: @value_config.errors, status: :unprocessable_entity
    end
  end

  # DELETE /value_configs/1
  def destroy
    @value_config.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value_config
      @value_config = ValueConfig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def value_config_params
      params.require(:value_config).permit(:constraint_id, :default_value, :max_value, :min_value)
    end
end
