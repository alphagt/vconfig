class CoveragesController < ApplicationController
  before_action :set_coverage, only: %i[ show update destroy ]

  # GET /coverages
  def index
    @coverages = Coverage.all

    render json: @coverages, :include => [:constraints], :except => [:created_at, :updated_at]
  end

  # GET /coverages/1
  def show
    render json: @coverage, :include => [:constraints], :except => [:created_at, :updated_at]
  end

  # POST /coverages
  def create
    @coverage = Coverage.new(coverage_params)

    if @coverage.save
      render json: @coverage, status: :created, location: @coverage
    else
      render json: @coverage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coverages/1
  def update
    if @coverage.update(coverage_params)
      render json: @coverage
    else
      render json: @coverage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coverages/1
  def destroy
    @coverage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage
      @coverage = Coverage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coverage_params
      params.require(:coverage).permit(:name, :code, :version, :type, :carrier)
    end
end
