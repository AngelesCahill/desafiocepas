class WinemakerWinetastedsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_winemaker_winetasted, only: %i[ show edit update destroy ]

  # GET /winemaker_winetasteds or /winemaker_winetasteds.json
  def index
    @winemaker_winetasteds = WinemakerWinetasted.all
    @winetasted = Winetasted.all
  end

  # GET /winemaker_winetasteds/1 or /winemaker_winetasteds/1.json
  def show
  end

  # GET /winemaker_winetasteds/new
  def new
    @winemaker_winetasted = WinemakerWinetasted.new
  end

  # GET /winemaker_winetasteds/1/edit
  def edit
  end

  # POST /winemaker_winetasteds or /winemaker_winetasteds.json
  def create
    @winemaker_winetasted = WinemakerWinetasted.new(winemaker_winetasted_params)

    respond_to do |format|
      if @winemaker_winetasted.save
        format.html { redirect_to winemaker_winetasted_url(@winemaker_winetasted), notice: "Winemaker winetasted was successfully created." }
        format.json { render :show, status: :created, location: @winemaker_winetasted }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @winemaker_winetasted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winemaker_winetasteds/1 or /winemaker_winetasteds/1.json
  def update
    respond_to do |format|
      if @winemaker_winetasted.update(winemaker_winetasted_params)
        format.html { redirect_to winemaker_winetasted_url(@winemaker_winetasted), notice: "Winemaker winetasted was successfully updated." }
        format.json { render :show, status: :ok, location: @winemaker_winetasted }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @winemaker_winetasted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winemaker_winetasteds/1 or /winemaker_winetasteds/1.json
  def destroy
    @winemaker_winetasted.destroy

    respond_to do |format|
      format.html { redirect_to winemaker_winetasteds_url, notice: "Winemaker winetasted was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winemaker_winetasted
      @winemaker_winetasted = WinemakerWinetasted.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def winemaker_winetasted_params
      params.require(:winemaker_winetasted).permit(:winemaker_id, :winetasted_id, :name)
    end
end
