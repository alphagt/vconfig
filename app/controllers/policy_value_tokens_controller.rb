class PolicyValueTokensController < ApplicationController
  before_action :set_policy_value_token, only: %i[ show update destroy ]

  # GET /policy_value_tokens
  def index
    @policy_value_tokens = PolicyValueToken.all

    render json: @policy_value_tokens
  end

  # GET /policy_value_tokens/1
  def show
    render json: @policy_value_token
  end

  # POST /policy_value_tokens
  def create
    @policy_value_token = PolicyValueToken.new(policy_value_token_params)

    if @policy_value_token.save
      render json: @policy_value_token, status: :created, location: @policy_value_token
    else
      render json: @policy_value_token.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /policy_value_tokens/1
  def update
    if @policy_value_token.update(policy_value_token_params)
      render json: @policy_value_token
    else
      render json: @policy_value_token.errors, status: :unprocessable_entity
    end
  end

  # DELETE /policy_value_tokens/1
  def destroy
    @policy_value_token.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_value_token
      @policy_value_token = PolicyValueToken.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def policy_value_token_params
      params.require(:policy_value_token).permit(:token, :description)
    end
end
