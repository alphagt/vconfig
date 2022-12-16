class ConstraintsController < ApplicationController
  before_action :set_constraint, only: %i[ show update destroy ]

  # GET /constraints
  def index
    @constraints = Constraint.all

    render json: @constraints, :include => [:value_configs], :except => [:created_at, :updated_at, :constrainable_type]
  end

  # GET /constraints/1
  def show
    render json: @constraint, :include => [:value_configs], :except => [:created_at, :updated_at]
  end

  # POST /constraints
  def create
    @constraint = Constraint.new(constraint_params)

    if @constraint.save
      render json: @constraint, status: :created, location: @constraint
    else
      render json: @constraint.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /constraints/1
  def update
    if @constraint.update(constraint_params)
      render json: @constraint
    else
      render json: @constraint.errors, status: :unprocessable_entity
    end
  end

  # DELETE /constraints/1
  def destroy
    @constraint.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constraint
      @constraint = Constraint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def constraint_params
      params.require(:constraint).permit(:coverage_group_id, :name, :subject, :value_token, :operator, :optional, :default, :units, :agreggate, value_config_ids: [])
    end
end
