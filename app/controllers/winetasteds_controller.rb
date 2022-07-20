class WinetastedsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_winetasted, only: %i[ show edit update destroy ]

  # GET /winetasteds or /winetasteds.json
  def index
    @winetasteds = Winetasted.all
  end

  # GET /winetasteds/1 or /winetasteds/1.json
  def show
  end

  # GET /winetasteds/new
  def new
    @winetasted = Winetasted.new
  end

  # GET /winetasteds/1/edit
  def edit
  end

  # POST /winetasteds or /winetasteds.json
  def create
    @winetasted = Winetasted.new(winetasted_params)

    respond_to do |format|
      if @winetasted.save
        format.html { redirect_to winetasted_url(@winetasted), notice: "Winetasted was successfully created." }
        format.json { render :show, status: :created, location: @winetasted }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @winetasted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winetasteds/1 or /winetasteds/1.json
  def update
    respond_to do |format|
      if @winetasted.update(winetasted_params)
        format.html { redirect_to winetasted_url(@winetasted), notice: "Winetasted was successfully updated." }
        format.json { render :show, status: :ok, location: @winetasted }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @winetasted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winetasteds/1 or /winetasteds/1.json
  def destroy
    @winetasted.destroy

    respond_to do |format|
      format.html { redirect_to winetasteds_url, notice: "Winetasted was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winetasted
      @winetasted = Winetasted.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def winetasted_params
      params.require(:winetasted).permit(:name, :strain, :percentage, {winemaker_ids: []})
    end
end
