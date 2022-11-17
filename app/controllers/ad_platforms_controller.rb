class AdPlatformsController < ApplicationController
  before_action :set_ad_platform, only: %i[ show edit update destroy ]

  # GET /ad_platforms or /ad_platforms.json
  def index
    @ad_platforms = AdPlatform.all
  end

  # GET /ad_platforms/1 or /ad_platforms/1.json
  def show
  end

  # GET /ad_platforms/new
  def new
    @ad_platform = AdPlatform.new
  end

  # GET /ad_platforms/1/edit
  def edit
  end

  # POST /ad_platforms or /ad_platforms.json
  def create
    @ad_platform = AdPlatform.new(ad_platform_params)

    respond_to do |format|
      if @ad_platform.save
        format.html { redirect_to ad_platform_url(@ad_platform), notice: "Ad platform was successfully created." }
        format.json { render :show, status: :created, location: @ad_platform }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ad_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_platforms/1 or /ad_platforms/1.json
  def update
    respond_to do |format|
      if @ad_platform.update(ad_platform_params)
        format.html { redirect_to ad_platform_url(@ad_platform), notice: "Ad platform was successfully updated." }
        format.json { render :show, status: :ok, location: @ad_platform }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ad_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_platforms/1 or /ad_platforms/1.json
  def destroy
    @ad_platform.destroy

    respond_to do |format|
      format.html { redirect_to ad_platforms_url, notice: "Ad platform was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_platform
      @ad_platform = AdPlatform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_platform_params
      params.require(:ad_platform).permit(:name)
    end
end
