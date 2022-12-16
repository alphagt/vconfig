class PvlistsController < ApplicationController
  before_action :set_pvlist, only: %i[ show update destroy ]

  # GET /pvlists
  def index
    @pvlists = Pvlist.all

    render json: @pvlists
  end

  # GET /pvlists/1
  def show
    render json: @pvlist
  end

  # POST /pvlists
  def create
    @pvlist = Pvlist.new(pvlist_params)

    if @pvlist.save
      render json: @pvlist, status: :created, location: @pvlist
    else
      render json: @pvlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pvlists/1
  def update
    if @pvlist.update(pvlist_params)
      render json: @pvlist
    else
      render json: @pvlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pvlists/1
  def destroy
    @pvlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pvlist
      @pvlist = Pvlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pvlist_params
      params.require(:pvlist).permit(:pvtoken, :provider)
    end
end
