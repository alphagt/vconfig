class CoverageGroupsController < ApplicationController
  before_action :set_coverage_group, only: %i[ show update destroy ]

  # GET /coverage_groups
  def index
    @coverage_groups = CoverageGroup.all

    render json: @coverage_groups, :include => [{:coverages => {:include => [:constraints]}}, :constraints], :except => [:created_at, :updated_at]
  end

  # GET /coverage_groups/1
  def show
    render json: @coverage_group, :include => [{:coverages => {:include => [:constraints]}}, :constraints], :except => [:created_at, :updated_at]
  end

  # POST /coverage_groups
  def create
    @coverage_group = CoverageGroup.new(coverage_group_params)

    if @coverage_group.save
      render json: @coverage_group, status: :created, location: @coverage_group
    else
      render json: @coverage_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coverage_groups/1
  def update
    if @coverage_group.update(coverage_group_params)
      render json: @coverage_group
    else
      render json: @coverage_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coverage_groups/1
  def destroy
    @coverage_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_group
      @coverage_group = CoverageGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coverage_group_params
      params.require(:coverage_group).permit(:product_id, :name, :code)
    end
end
